struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: f32 = 1000f;

var<private> global2: bool;

var<private> global3: array<vec4<f32>, 12>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    global0 = array<Struct_2, 2>();
    global2 = !any(vec2<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(round(1447f)) > _wgslsmith_f_op_f32(1878f - -855f)));
    global2 = false;
    let var_0 = Struct_3(_wgslsmith_clamp_i32(~(-3574i), _wgslsmith_sub_i32(u_input.a.x, -1i), max(-1283i, u_input.a.x)) << ((~(u_input.d & 4294967295u) << (0u % 32u)) % 32u), Struct_1(~1u), Struct_2(~countOneBits(vec2<u32>(u_input.d, 32333u)) | vec2<u32>(_wgslsmith_add_u32(0u, u_input.d), u_input.d), ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.c, 0u, 5136u), vec4<u32>(u_input.d, 66124u, u_input.d, 21139u), vec4<u32>(4294967295u, 4294967295u, 91250u, 103841u)), vec4<u32>(u_input.d, u_input.d, u_input.d, 1u)), ~(~abs(vec2<u32>(u_input.d, 4294967295u)))), -firstLeadingBit(vec3<i32>(0i, 0i, u_input.a.x) >> (vec3<u32>(u_input.c, 22455u, u_input.d) % vec3<u32>(32u))) & select(abs(~vec3<i32>(16506i, -19239i, 0i)), _wgslsmith_clamp_vec3_i32(reverseBits(u_input.a), -u_input.b, vec3<i32>(-613i, u_input.b.x, u_input.a.x)), all(vec3<bool>(true, false, true))));
    var var_1 = ~(~1u);
    return min(0i, 9317i);
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = arg_0;
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -910f)), _wgslsmith_f_op_f32(-169f * -292f))), 435f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1756f)) + -332f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -885f))) - _wgslsmith_div_f32(1191f, _wgslsmith_f_op_f32(-1f)))));
    var var_1 = global3[_wgslsmith_index_u32(13636u, 12u)];
    global2 = _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(u_input.b.x, 6793i, arg_0.d.x, 1i) ^ vec4<i32>(2147483647i, -44026i, 1i, -8143i)), -(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.a, var_0.d.x, 2147483647i), vec4<i32>(31481i, -18113i, 21757i, var_0.d.x), vec4<i32>(-2147483647i, u_input.b.x, arg_0.a, 1i)) >> (~vec4<u32>(57345u, arg_0.b.a, 7012u, 29322u) % vec4<u32>(32u)))) > func_3();
    let var_2 = ~min(vec3<i32>(32186i, arg_0.d.x, 2147483647i | var_0.a), ~(-var_0.d) >> (var_0.c.b.xwx % vec3<u32>(32u)));
    return -397f;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_f32(f32(-1f) * -613f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(func_2(Struct_3(-1i, Struct_1(4294967295u), Struct_2(vec2<u32>(u_input.d, u_input.c), vec4<u32>(1u, arg_3.a, arg_3.a, 1u), vec2<u32>(arg_3.a, 154u)), vec3<i32>(58982i, 0i, 71117i)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(589f, 385f, -1123f, 1148f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1071f, arg_0.x, 1435f, arg_0.x))))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(658f, -3195f, arg_0.x, -172f)))))));
    let var_1 = i32(-1i) * -24991i;
    let var_2 = Struct_1(min(u_input.c, select(abs(~28503u), ~arg_3.a << (_wgslsmith_mult_u32(37486u, 1u) % 32u), arg_2.x)));
    let var_3 = _wgslsmith_mod_vec4_u32(select(_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.c, 0u, arg_3.a, arg_3.a) >> (vec4<u32>(var_2.a, arg_3.a, arg_3.a, u_input.c) % vec4<u32>(32u))), abs(vec4<u32>(u_input.c, u_input.d, 1u, 13976u))), ~vec4<u32>(30825u & arg_3.a, 40376u, arg_3.a, 19591u), vec4<bool>(true, arg_2.x, true, all(select(vec3<bool>(arg_2.x, true, false), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.x)))), ~vec4<u32>(42311u, ~(u_input.d << (var_2.a % 32u)), 55605u, arg_3.a));
    var var_4 = -1335f;
    return ~arg_3.a ^ reverseBits(firstTrailingBit(arg_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-_wgslsmith_mult_i32(2147483647i, u_input.b.x) << (func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(324f, -1130f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(799f, -354f) * vec2<f32>(414f, 889f)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), -u_input.b, !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_1(1u)) % 32u), Struct_1(u_input.d), global0[_wgslsmith_index_u32(u_input.c, 2u)], u_input.b);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1095f * -426f)) + _wgslsmith_f_op_f32(func_2(Struct_3(-10188i, var_0.b, global0[_wgslsmith_index_u32(4294967295u, 2u)], vec3<i32>(25744i, var_0.a, -4773i))))), 1571f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 334f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -674f, -1555f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 144f, var_1) * vec3<f32>(var_1, -771f, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(155f, var_1, var_1))))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1951f)), -724f, 392f), select(vec3<bool>(988f < var_1, true, false), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1433f, 669f, 1700f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 173f, var_1), vec3<f32>(var_1, 1139f, -293f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 100f, var_1) + vec3<f32>(var_1, var_1, var_1))), var_0.c.b.x == u_input.d)))));
    var var_3 = (5745u >> (var_0.c.b.x % 32u)) ^ (firstTrailingBit(17235u) | _wgslsmith_dot_vec2_u32(~var_0.c.a ^ var_0.c.b.zx, var_0.c.b.wz));
    let var_4 = select(select(select(vec2<bool>(any(vec3<bool>(true, false, true)), false), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true), vec2<bool>(var_0.d.x < 1i, true)), vec2<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(1480f + -131f) <= var_1), true), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), !(true & (var_0.d.x <= -18590i))), vec2<bool>(true, true));
    var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~select(~var_0.c.b.yzx, var_0.c.b.wzx ^ vec3<u32>(1u, 0u, 4294967295u), select(vec3<bool>(false, var_4.x, false), vec3<bool>(var_4.x, false, false), vec3<bool>(var_4.x, false, var_4.x))), vec3<u32>(var_0.c.a.x, countOneBits(22125u), 1u) << (abs(~vec3<u32>(var_0.b.a, u_input.d, var_0.b.a)) % vec3<u32>(32u))), vec4<u32>(~_wgslsmith_mod_u32(var_0.c.a.x << (u_input.c % 32u), ~u_input.c), max(_wgslsmith_sub_u32(abs(7715u), ~var_0.c.c.x), _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(var_0.b.a, u_input.c))), 0u, u_input.d), _wgslsmith_mod_u32(reverseBits(~var_0.b.a ^ _wgslsmith_div_u32(46726u, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~26766u, u_input.c, 1u), var_0.c.a.x)), var_0.c.b.x);
}

