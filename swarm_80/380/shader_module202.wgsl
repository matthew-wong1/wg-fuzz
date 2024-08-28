struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 2317u, 29150u), vec3<bool>(false, false, true), vec2<bool>(false, true), vec2<f32>(1000f, -686f), 1u);

var<private> global1: array<Struct_3, 21>;

var<private> global2: vec4<i32> = vec4<i32>(6578i, 0i, -14844i, -1i);

var<private> global3: vec4<f32> = vec4<f32>(-748f, -688f, -1000f, -771f);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(vec3<u32>(u_input.c.x, u_input.d, _wgslsmith_dot_vec3_u32(~global0.a, _wgslsmith_sub_vec3_u32(~vec3<u32>(60063u, 103u, global0.a.x), global0.a))), !vec3<bool>(any(vec4<bool>(true, global0.b.x, false, false)), any(select(vec2<bool>(false, false), vec2<bool>(global0.c.x, true), true)), !any(global0.b)), global0.c, vec2<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x)))), 1u);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-915f, 1705f, global0.c.x)))))));
    var_1 = 725f;
    let var_2 = 71230u;
    var var_3 = Struct_2(var_0, countOneBits(select(global2.zyy << (countOneBits(vec3<u32>(68081u, var_2, var_2)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(39123i, -17975i, 1i), ~global2.xyx, select(vec3<i32>(u_input.b, global2.x, 54121i), vec3<i32>(u_input.b, 2147483647i, 35043i), vec3<bool>(false, var_0.b.x, true))), _wgslsmith_mult_u32(u_input.d, var_2) != var_2)), !(!var_0.b.xx), 2388u);
    return _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.e, u_input.c.x, var_2, u_input.c.x) << (vec4<u32>(3048u, u_input.e, 44177u, 0u) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 0u, 59667u), select(vec4<u32>(u_input.c.x, var_3.d, 22933u, 35393u), vec4<u32>(4294967295u, 23946u, var_3.a.e, 0u), global0.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.e, 53741u, 44814u, u_input.c.x) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, 99341u, 4294967295u, 0u), vec4<u32>(var_3.a.a.x, u_input.c.x, global0.a.x, 0u)), firstTrailingBit(vec4<u32>(var_0.a.x, var_2, 9948u, var_0.e)) & max(vec4<u32>(var_2, 1u, u_input.e, 65099u), vec4<u32>(u_input.e, var_0.a.x, 1u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2, var_0.e, global0.e, 1u), vec4<u32>(60946u, 26403u, var_2, 0u) ^ vec4<u32>(global0.a.x, global0.a.x, 4259u, 317u)))) << (select(~(~vec4<u32>(1u, u_input.c.x, 0u, 1u)), ~max(vec4<u32>(u_input.e, u_input.d, u_input.e, 30244u), vec4<u32>(var_2, 4294967295u, var_2, var_2)), vec4<bool>(!var_0.c.x, true, true && !var_0.c.x, var_0.c.x)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_3, arg_3: vec3<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(158f, global0.d.x)))), _wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x - arg_2.d)))));
    var var_1 = true;
    let var_2 = Struct_1(global0.a, !vec3<bool>(true, true, !(arg_1 == global0.c.x)), !global0.b.xx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(ceil(-1143f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.d)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.d.x)), 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -437f)))), true)), 1u);
    var var_3 = arg_2;
    let var_4 = _wgslsmith_add_vec4_i32(-(arg_0 << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(51664u, global0.a.x, 0u, 16396u), vec4<u32>(28001u, 0u, var_2.a.x, var_2.a.x)), abs(26060u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 1u, var_2.e, var_2.a.x), vec4<u32>(0u, 1u, 63632u, u_input.c.x)), firstLeadingBit(u_input.d)) % vec4<u32>(32u))), arg_0);
    return var_2.a.xy;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = true;
    var var_1 = global0.a.xz << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(global0.a.x, 1u) >> (abs(~vec2<u32>(u_input.d, u_input.e)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(global0.a.xz >> (vec2<u32>(global0.e, 1u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, global0.a.x), ~u_input.c)), func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_0, 0i, 1i), vec4<i32>(-2147483647i, -2147483647i, 48185i, arg_0), vec4<i32>(3324i, -65720i, u_input.b, 8864i)) >> (func_3() % vec4<u32>(32u)), global0.b.x, Struct_3(57948i, _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, arg_0), vec2<i32>(arg_0, -33234i), vec2<i32>(arg_0, global2.x)), u_input.b, global0.d.x), min(global2.xxz, vec3<i32>(-24368i, 33275i, -5833i)))) % vec2<u32>(32u));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -322f, _wgslsmith_f_op_f32(round(2072f)), global3.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, 1296f, global0.d.x, global3.x))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, global3.x, global0.d.x, -1075f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(579f, 763f, -1000f, 364f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1049f, global0.d.x, 360f, 847f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-812f, 476f, global3.x, -1987f), vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-382f, global0.d.x, global0.d.x, global3.x), vec4<f32>(global3.x, global0.d.x, -666f, global3.x))))));
    return global0.b.x;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(select(~select(vec3<u32>(global0.a.x, u_input.e, 1u), global0.a, !global0.b), global0.a, !global0.b), vec3<bool>(true, any(select(!vec2<bool>(false, global0.b.x), select(vec2<bool>(global0.b.x, global0.c.x), vec2<bool>(false, true), vec2<bool>(false, global0.b.x)), !global0.c)), all(vec3<bool>(false, select(true, false, false), false))), vec2<bool>(global0.c.x, func_2(1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.ww * vec2<f32>(global3.x, -1166f)) - global0.d))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) - _wgslsmith_f_op_f32(-global3.x)), global3.x)), abs(_wgslsmith_add_u32(abs(reverseBits(0u)), global0.e ^ abs(1u))));
    global2 = vec4<i32>(firstTrailingBit(global2.x), -30551i, global2.x, -(~(-2147483647i)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(var_0.a, vec3<u32>(_wgslsmith_clamp_u32(0u, 16738u, 1u), _wgslsmith_sub_u32(global0.a.x, var_0.a.x), global0.e)), vec3<bool>(all(!vec4<bool>(false, false, global0.b.x, true)), var_0.c.x, false), select(select(select(global0.b.zx, vec2<bool>(false, var_0.c.x), vec2<bool>(global0.b.x, var_0.b.x)), global0.c, select(var_0.c, vec2<bool>(false, false), false)), !global0.b.yy, false), _wgslsmith_f_op_vec2_f32(global0.d - global3.yw), 21478u), vec3<i32>(~u_input.b, _wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(u_input.b), u_input.b << (u_input.e % 32u)), firstTrailingBit(u_input.a) & -16093i, abs(_wgslsmith_sub_i32(global2.x, -9159i))), -18601i), select(!global0.c, global0.b.zz, global0.c.x), _wgslsmith_mod_u32(global0.e, abs(func_3().x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, var_1.a.d.x, -1928f, -581f), vec4<f32>(-1878f, global3.x, global3.x, global0.d.x))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.d.x)), _wgslsmith_f_op_f32(step(-1000f, 864f)), _wgslsmith_f_op_f32(-var_1.a.d.x), _wgslsmith_div_f32(-582f, 1195f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, var_0.d.x, 788f, var_1.a.d.x), vec4<f32>(var_1.a.d.x, 896f, -1740f, 1956f))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, 811f, -741f, 544f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1557f, global3.x, -226f, var_0.d.x), vec4<f32>(global3.x, -735f, -1268f, 2028f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d.x, var_1.a.d.x, -755f, global0.d.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-507f, global0.d.x, var_1.a.d.x, 651f))), _wgslsmith_div_vec4_f32(vec4<f32>(1227f, -937f, 2765f, global0.d.x), vec4<f32>(var_1.a.d.x, -1817f, var_1.a.d.x, global0.d.x)))), vec4<f32>(_wgslsmith_f_op_f32(-597f + var_1.a.d.x), _wgslsmith_f_op_f32(-735f * -333f), var_0.d.x, _wgslsmith_f_op_f32(max(global3.x, global3.x))))), any(!var_1.c) & (1u != (var_0.a.x << (0u % 32u))))));
    var_0 = var_1.a;
    return global1[_wgslsmith_index_u32(23473u, 21u)];
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    var var_0 = -21034i;
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(~global0.a, ~global0.a), global0.b, !(!(!vec2<bool>(true, global0.b.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(362f - -1447f), _wgslsmith_f_op_f32(f32(-1f) * -311f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, global3.x))), all(!global0.b))), countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c, u_input.c), u_input.c ^ global0.a.zy))), global2.xyx, global0.b.zx, ~u_input.c.x);
    global1 = array<Struct_3, 21>();
    var var_2 = global0.a.zz;
    global3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -654f), global0.d.x, global0.d.x, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(-1943f, arg_0.d)))))));
    return Struct_1(~select(_wgslsmith_div_vec3_u32(var_1.a.a >> (vec3<u32>(var_1.d, 1u, var_1.d) % vec3<u32>(32u)), ~vec3<u32>(global0.e, 4294967295u, 4294967295u)), vec3<u32>(~global0.a.x, var_1.d, ~var_2.x), true), var_1.a.b, global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.d.x, 273f) + vec2<f32>(192f, arg_0.d)), true))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global0.d.x, global0.d.x), vec2<f32>(-2163f, arg_0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.d - vec2<f32>(global3.x, global0.d.x)))))), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, vec3<bool>(!any(vec2<bool>(global0.b.x, false)), global0.c.x, 4294967295u >= (0u & (global0.e >> (4550u % 32u)))), vec2<bool>(false, any(vec3<bool>(all(vec3<bool>(true, false, true)), u_input.c.x < 0u, select(false, global0.c.x, global0.b.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.d, global3.zy)) * _wgslsmith_f_op_vec2_f32(exp2(global0.d))) - _wgslsmith_f_op_vec2_f32(exp2(global0.d))))), 4294967295u);
    var var_0 = Struct_2(func_5(func_1()), -vec3<i32>(u_input.b, ~global2.x, -2147483647i), select(!vec2<bool>(1i > global2.x, any(vec4<bool>(false, global0.c.x, true, global0.b.x))), global0.b.xz, func_5(Struct_3(_wgslsmith_sub_i32(-1i, -26923i), firstTrailingBit(vec2<i32>(global2.x, u_input.b)), -2147483647i, _wgslsmith_f_op_f32(sign(global3.x)))).c), global0.e);
    let var_1 = reverseBits(select(-countOneBits(vec3<i32>(u_input.b, var_0.b.x, u_input.a)), vec3<i32>(-16064i, global2.x & var_0.b.x, -u_input.b) ^ vec3<i32>(global2.x, var_0.b.x, abs(var_0.b.x)), var_0.a.b));
    global0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(var_0.d, 1u << (global0.e % 32u), countOneBits(4294967295u))), 4294967295u, var_0.d), var_0.a.b, !vec2<bool>(false, var_0.a.b.x | !global0.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f)), global3.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(var_0.a.e, 15118u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(117383u, global0.a.x), global0.a.yx)), global0.e & abs(var_0.d), global0.e ^ func_3().x));
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 2147483647i, 1i), -18993i, select(-global2.x, min(var_1.x, var_1.x), !global0.c.x), 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(16503i, 8316i, var_1.x, 2147483647i) << (select(vec4<u32>(global0.e, 12057u, var_0.a.e, global0.e), vec4<u32>(global0.a.x, var_0.d, 4294967295u, u_input.e), global0.c.x) % vec4<u32>(32u)), firstLeadingBit(-vec4<i32>(u_input.a, 2147483647i, var_0.b.x, var_0.b.x)), firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.a, -9535i, -1i, var_1.x))))), _wgslsmith_add_vec4_i32(-reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_1.x, 0i, 2147483647i), vec4<i32>(-1i, var_0.b.x, 82077i, u_input.a))), -vec4<i32>(global2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 44360i, global2.x, global2.x), vec4<i32>(2147483647i, 1i, 0i, var_0.b.x)), var_0.b.x, var_1.x)));
    var var_3 = !(!var_0.a.b);
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(876f - global3.x), -413f))), _wgslsmith_f_op_f32(min(global0.d.x, -607f))));
    let var_4 = ~func_1().b.x;
    var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, (8366i & var_4) >> (4294967295u % 32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(var_1.zy, vec2<i32>(17027i, global2.x)), vec2<i32>(var_2.x, -4587i)) & firstLeadingBit(~var_2.yx)), 0i, -global2.x, -var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec3<i32>(countOneBits(var_2.x), i32(-1i) * -1i, var_1.x), vec3<i32>(-9173i, 305i, -29137i) ^ var_0.b, !var_0.a.b), _wgslsmith_div_vec3_u32(~global0.a, max(global0.a | _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.e, global0.e, global0.a.x), vec3<u32>(0u, 1u, 1u)), abs(global0.a) ^ min(var_0.a.a, vec3<u32>(u_input.c.x, var_0.a.a.x, 84302u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + var_0.a.d.x) + _wgslsmith_f_op_f32(sign(global3.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.d.x))))), global2.yzx);
}

