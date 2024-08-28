struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1122f;

var<private> global1: array<u32, 8> = array<u32, 8>(88889u, 4294967295u, 3593u, 18108u, 0u, 0u, 47024u, 0u);

var<private> global2: vec3<f32>;

var<private> global3: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = Struct_2(abs(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_0.a.x, u_input.a.x, -14095i), arg_0.a), -vec3<i32>(-18943i, -1194i, u_input.a.x)), -(u_input.a.x ^ -1i))), any(vec4<bool>(-1093f <= global2.x, true && any(vec3<bool>(arg_0.b, false, true)), _wgslsmith_f_op_f32(sign(arg_1)) <= _wgslsmith_f_op_f32(step(arg_0.d.x, arg_1)), select(true, any(arg_0.c.zx), arg_0.b))), arg_0.c, _wgslsmith_div_vec4_f32(arg_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0.d, vec4<f32>(1307f, arg_1, arg_0.d.x, arg_0.d.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_0.d.x, arg_1, -2397f)))))));
    var var_1 = Struct_5(-(~reverseBits(_wgslsmith_add_vec4_i32(u_input.a, u_input.a))), Struct_4(!(!select(vec4<bool>(true, var_0.c.x, false, false), vec4<bool>(arg_0.b, arg_0.b, var_0.c.x, arg_0.b), arg_0.b)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), var_0.d.wzx)), Struct_3(global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(4294967295u, 8u)] << (u_input.e % 32u)), 8u)], vec3<i32>(24144i, -u_input.a.x, 0i), Struct_1(arg_0.d.x, _wgslsmith_div_f32(arg_0.d.x, -245f)), Struct_1(_wgslsmith_f_op_f32(1062f - global2.x), global2.x), abs(countOneBits(vec2<u32>(4437u, u_input.b.x)))), Struct_3(2920u, vec3<i32>(-51506i, 24295i, abs(arg_0.a.x)), Struct_1(_wgslsmith_f_op_f32(arg_1 + global2.x), _wgslsmith_f_op_f32(-var_0.d.x)), Struct_1(_wgslsmith_f_op_f32(arg_1 + var_0.d.x), 717f), u_input.d)), arg_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.wy * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b.c.c.b * var_1.b.b.x), _wgslsmith_f_op_f32(trunc(-1106f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, -303f) - vec2<f32>(2616f, arg_1)), var_0.d.yy)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d.zz + var_1.c.d.xz))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1229f + 359f)), -1188f), !var_0.c.zz)));
    let var_3 = _wgslsmith_clamp_u32(~u_input.e, min(0u, u_input.c), u_input.c);
    global0 = _wgslsmith_f_op_f32(1049f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1074f - arg_1))) + 742f)));
    return 24196u;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec3<f32> {
    var var_0 = 11758u;
    var var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(~(~34644u), 0u, arg_2.x), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 53734u), vec2<u32>(arg_2.x, arg_2.x)), ~u_input.c), ~21820u), func_3(Struct_2(vec3<i32>(u_input.a.x, 2147483647i, 0i), any(vec3<bool>(arg_1.x, false, arg_1.x)), select(vec3<bool>(arg_1.x, true, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x), vec4<f32>(-504f, global2.x, global2.x, 1569f)), global2.x), ~arg_2.x));
    var var_2 = Struct_5(select(~(u_input.a << (u_input.b % vec4<u32>(32u))), u_input.a, !(!select(vec4<bool>(false, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_1.x))), Struct_4(!select(!vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(true, false, true, false), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, false, true), false)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -666f, global2.x)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(724f, 348f, -150f)))))), Struct_3(_wgslsmith_mult_u32(67466u, 1u), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 5007i, u_input.a.x), firstTrailingBit(vec3<i32>(13084i, u_input.a.x, u_input.a.x))), Struct_1(_wgslsmith_f_op_f32(-1116f * -1353f), _wgslsmith_f_op_f32(step(global2.x, global2.x))), Struct_1(-1633f, _wgslsmith_div_f32(-801f, global2.x)), vec2<u32>(~0u, _wgslsmith_mult_u32(0u, 0u))), Struct_3(4294967295u, u_input.a.zww, Struct_1(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(231f * global2.x)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2046f), global2.x), ~(arg_2.zy ^ arg_2.xz))), Struct_2(-vec3<i32>(1i, u_input.a.x, select(-2147483647i, 1i, arg_1.x)), true, select(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, arg_1.x)), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(false, arg_1.x, var_1.x >= 23817u)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(420f * global2.x), _wgslsmith_f_op_f32(step(-200f, global2.x))), global2.x, _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_div_f32(-567f, -939f))), global2.x)));
    global2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.c.d.x, _wgslsmith_f_op_f32(991f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(276f, -1280f)), -1039f, var_2.c.c.x))), _wgslsmith_f_op_f32(-1881f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), -885f)))), _wgslsmith_f_op_vec3_f32(var_2.b.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.c.d.a, -403f, global2.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.d.yxx), _wgslsmith_f_op_vec3_f32(-var_2.c.d.xxw))))));
    let var_3 = Struct_5(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(35897i, u_input.a.x, -1i), countOneBits(u_input.a.yxx)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-65260i, u_input.a.x), _wgslsmith_div_i32(var_2.c.a.x, -13386i))), 51408i, ~2147483647i, abs(select(u_input.a.x, 0i, true))), Struct_4(vec4<bool>(_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(global1[_wgslsmith_index_u32(var_1.x, 8u)], 1u, u_input.c)) == ~5043u, var_2.b.a.x, ~16604u >= firstTrailingBit(67348u), true), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -835f)), 1806f, _wgslsmith_f_op_f32(f32(-1f) * -685f)), Struct_3(_wgslsmith_div_u32(55675u | arg_0, ~20261u), u_input.a.yyw, var_2.b.d.d, var_2.b.c.c, vec2<u32>(u_input.b.x, 37193u)), Struct_3(reverseBits(~1u), (vec3<i32>(2147483647i, u_input.a.x, -19351i) ^ vec3<i32>(-41817i, -1i, -68036i)) | min(u_input.a.zyz, vec3<i32>(-6380i, u_input.a.x, 2147483647i)), var_2.b.c.d, var_2.b.c.c, _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, var_1.x), var_1.yx))), var_2.c);
    return var_2.b.b;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 1424f, global2.x), vec3<f32>(1611f, -417f, 1290f)))) - vec3<f32>(_wgslsmith_f_op_f32(select(global2.x, global2.x, false)), 302f, 166f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(826f, 1462f, 767f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2(1u, vec2<bool>(false, true), u_input.b.xww)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 841f, global2.x)))), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1626f), -680f) + vec3<f32>(_wgslsmith_f_op_f32(select(924f, global2.x, true)), _wgslsmith_f_op_f32(max(-451f, 435f)), _wgslsmith_f_op_f32(f32(-1f) * -537f))))), !any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)))));
    var var_1 = vec4<bool>(!(!all(vec4<bool>(false, true, false, false))), u_input.a.x == ~u_input.a.x, true, !any(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), true)));
    global3 = all(!select(vec4<bool>(any(var_1.zwz), false, all(vec2<bool>(false, false)), all(var_1.wz)), vec4<bool>(u_input.a.x > 16542i, var_1.x, select(var_1.x, var_1.x, var_1.x), true & var_1.x), true));
    let var_2 = Struct_5(select(u_input.a, abs(u_input.a) | select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1766i), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -30513i) & u_input.a, select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x))), vec4<bool>(true, var_1.x & true, false, true)), Struct_4(vec4<bool>(_wgslsmith_f_op_f32(select(223f, global2.x, var_1.x)) > _wgslsmith_div_f32(-1081f, var_0.x), var_1.x, false, all(!var_1.zxy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1000f, global2.x) - vec3<f32>(global2.x, global2.x, var_0.x)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_0.x, var_0.x))))), Struct_3(u_input.d.x, -firstLeadingBit(vec3<i32>(0i, 1i, -6786i)), Struct_1(_wgslsmith_f_op_f32(floor(var_0.x)), 971f), Struct_1(_wgslsmith_f_op_f32(-var_0.x), var_0.x), u_input.d), Struct_3(6064u, vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 44560i, u_input.a.x | -25933i), Struct_1(_wgslsmith_f_op_f32(-var_0.x), 356f), Struct_1(_wgslsmith_f_op_f32(step(596f, 1164f)), var_0.x), max(u_input.b.wx, reverseBits(vec2<u32>(83801u, 46606u))))), Struct_2(vec3<i32>(-2147483647i, 0i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, u_input.a.x), 30957i)), _wgslsmith_sub_u32(u_input.c, _wgslsmith_mult_u32(0u, 4294967295u)) <= _wgslsmith_mod_u32(select(global1[_wgslsmith_index_u32(30772u, 8u)], global1[_wgslsmith_index_u32(u_input.c, 8u)], var_1.x), u_input.d.x), vec3<bool>(true | any(var_1.wy), !var_1.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -1764f, 803f, global2.x), vec4<f32>(-343f, -273f, global2.x, -1230f), var_1.x))))));
    var var_3 = _wgslsmith_mod_vec4_u32(~(~(~u_input.b)), (_wgslsmith_sub_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(var_2.b.d.e.x, 18603u, 82461u, 4294967295u))) & u_input.b) << (vec4<u32>(1u, firstLeadingBit(~0u), 1u, u_input.b.x) % vec4<u32>(32u)));
    return u_input.a.x < -137i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 8>();
    var var_0 = vec4<bool>(false, true & (any(vec3<bool>(true, true, true)) == select(func_1(), u_input.b.x >= 58649u, true)), false, all(select(vec2<bool>(true, true), vec2<bool>(true, global2.x == 2360f), true)));
    global2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 512f)) + _wgslsmith_f_op_f32(global2.x - 234f)), -461f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, global2.x, 380f))) * _wgslsmith_f_op_vec3_f32(func_2(~75747u, vec2<bool>(false, true), vec3<u32>(global1[_wgslsmith_index_u32(1u, 8u)], u_input.b.x, 10364u)))))));
    global1 = array<u32, 8>();
    var var_1 = -30857i;
    var_1 = ~countOneBits(-55659i);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1173f + 535f)));
    var var_2 = !(!vec4<bool>(!(global2.x >= global2.x), false, var_0.x, var_0.x));
    global1 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(1f, reverseBits(~global1[_wgslsmith_index_u32(27857u, 8u)]), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.x)), global2.x))), -216f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(927f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.x)), 405f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(76983u | global1[_wgslsmith_index_u32(0u, 8u)], select(var_2.yx, var_2.xz, vec2<bool>(false, var_0.x)), vec3<u32>(62732u, 32591u, 0u) << (vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 45308u, 1u) % vec3<u32>(32u)))).x)), abs(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a.zyy, u_input.a.xzy), 1803i), u_input.a.x, min(u_input.a.x, u_input.a.x))));
}

