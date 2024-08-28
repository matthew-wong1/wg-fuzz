struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(235f, false, vec4<u32>(54809u, 1u, 5u, 0u)), Struct_1(-410f, true, vec4<u32>(4294967295u, 36294u, 1u, 0u))), Struct_2(Struct_1(-1000f, true, vec4<u32>(0u, 4294967295u, 0u, 0u)), Struct_1(-526f, false, vec4<u32>(0u, 70570u, 62261u, 39015u))), Struct_2(Struct_1(362f, true, vec4<u32>(75605u, 52925u, 0u, 0u)), Struct_1(-309f, false, vec4<u32>(16320u, 1u, 9159u, 14046u))), Struct_2(Struct_1(-659f, true, vec4<u32>(1u, 0u, 0u, 1u)), Struct_1(-926f, false, vec4<u32>(2936u, 36102u, 32373u, 4294967295u))), Struct_2(Struct_1(-736f, false, vec4<u32>(17205u, 11414u, 18861u, 4294967295u)), Struct_1(1442f, true, vec4<u32>(4294967295u, 4294967295u, 29608u, 38549u))), Struct_2(Struct_1(-651f, true, vec4<u32>(4294967295u, 1u, 79172u, 4294967295u)), Struct_1(766f, false, vec4<u32>(3749u, 4294967295u, 4294967295u, 0u))));

var<private> global2: i32 = -32112i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> vec2<bool> {
    global0 = array<vec4<u32>, 20>();
    global2 = _wgslsmith_div_i32(u_input.a.x ^ -1i, reverseBits(-9675i));
    global1 = array<Struct_2, 6>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(190f, -1198f))) + _wgslsmith_f_op_f32(-150f + 728f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1555f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-196f, 726f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)))));
    let var_1 = _wgslsmith_mod_u32(4294967295u, 86423u);
    return vec2<bool>(!any(vec3<bool>(true, true, true)), !any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = select(arg_0, arg_0, select(!select(!arg_0, arg_0, arg_0), select(arg_0, func_3(0u), false), arg_0.x));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f - -777f)) + _wgslsmith_f_op_f32(step(443f, _wgslsmith_f_op_f32(f32(-1f) * -1002f)))))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-671f * _wgslsmith_f_op_f32(abs(-1161f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1471f, 228f))))));
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-select(-vec3<i32>(u_input.b, 9513i, u_input.e.x), _wgslsmith_div_vec3_i32(vec3<i32>(-20393i, u_input.e.x, u_input.b), vec3<i32>(u_input.e.x, u_input.a.x, u_input.a.x)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<i32>(-1i) * -u_input.a), u_input.a);
    var var_2 = Struct_1(_wgslsmith_div_f32(771f, _wgslsmith_f_op_f32(func_2(vec2<bool>(true, -56250i <= u_input.a.x)))), !all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), countOneBits(min(~(global0[_wgslsmith_index_u32(149537u, 20u)] ^ global0[_wgslsmith_index_u32(u_input.c, 20u)]), ~global0[_wgslsmith_index_u32(0u, 20u)])));
    let var_3 = any(!vec4<bool>(select(true, var_2.b, false), var_2.b && (1u == var_2.c.x), func_3(~u_input.d).x, func_3(~u_input.c).x));
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a)) + var_2.a), var_3 && all(vec4<bool>(false, false, var_2.b, true)), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_2.c.x, var_2.c.x, var_2.c.x, u_input.d)), vec4<u32>(u_input.d, var_2.c.x, 8390u, 1u)) >> (~_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(u_input.c, 20u)], global0[_wgslsmith_index_u32(var_2.c.x, 20u)]) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(24777u, 6u)], _wgslsmith_dot_vec3_u32(var_2.c.zxx << (var_2.c.yxz % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.c.x, u_input.d, var_2.c.x), vec3<u32>(u_input.c, u_input.c, 9139u)), vec3<u32>(var_2.c.x, var_2.c.x, var_2.c.x >> (91419u % 32u)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), !all(vec4<bool>(false, var_3, var_2.b, var_3)), countOneBits(vec4<u32>(23866u, u_input.c, var_2.c.x, 4294967295u)) | var_2.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_2.a)), true, _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 28798u, 32142u, u_input.c) >> (var_2.c % vec4<u32>(32u)), ~vec4<u32>(u_input.c, 4457u, 44997u, 4294967295u), var_2.c))), select(select(vec4<bool>(false, true, true, var_2.b), select(vec4<bool>(true, true, var_3, true), vec4<bool>(var_2.b, var_3, var_2.b, var_2.b), !vec4<bool>(false, true, var_2.b, var_2.b)), !vec4<bool>(var_3, false, var_2.b, var_3)), !vec4<bool>(all(vec3<bool>(var_3, var_3, var_3)), u_input.d >= u_input.c, false, !var_3), vec4<bool>(true, var_2.b && (36187u <= var_2.c.x), any(!vec3<bool>(var_3, var_2.b, true)), true && var_3)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), all(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), vec4<bool>(true, true, func_1(), false))), vec4<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), all(vec3<bool>(false, true, false)))), select(true, false, (u_input.a.x & u_input.e.x) > _wgslsmith_add_i32(26219i, u_input.b)), !(!(u_input.c <= 1827u)), false == (max(u_input.c, 3571u) <= ~u_input.c)), false);
    global1 = array<Struct_2, 6>();
    let var_1 = func_1();
    global0 = array<vec4<u32>, 20>();
    var_0 = vec4<bool>((any(select(var_0.yzy, var_0.xwx, vec3<bool>(false, var_1, true))) & var_0.x) && true, !any(vec4<bool>(true, all(vec2<bool>(var_1, true)), true, any(vec4<bool>(true, true, true, false)))), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-542f)), _wgslsmith_f_op_f32(round(-375f)))), 109f)) >= _wgslsmith_f_op_f32(abs(-922f)));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true))), Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-324f + -2166f))), false, select(global0[_wgslsmith_index_u32(25174u, 20u)], global0[_wgslsmith_index_u32(75581u, 20u)], true)), global1[_wgslsmith_index_u32(u_input.c, 6u)], select(~0u, u_input.d, var_0.x), Struct_2(Struct_1(1f, true, ~global0[_wgslsmith_index_u32(u_input.d, 20u)]), Struct_1(-963f, true, global0[_wgslsmith_index_u32(u_input.d, 20u)])), vec4<bool>(var_1, var_1, any(vec4<bool>(var_0.x, true, true, var_0.x)), var_1)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, firstLeadingBit(1i)), max(u_input.a, abs(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a)))), Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -585f), any(!var_0.wx), global0[_wgslsmith_index_u32(~u_input.d >> (80086u % 32u), 20u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(0u, u_input.c)), vec2<u32>(1u, ~u_input.c)), 6u)], 88167u, Struct_2(Struct_1(_wgslsmith_f_op_f32(round(545f)), !var_0.x, ~global0[_wgslsmith_index_u32(51008u, 20u)]), Struct_1(-697f, select(var_1, var_0.x, true), vec4<u32>(13549u, 10503u, 0u, 126345u) ^ vec4<u32>(u_input.c, 1u, u_input.d, 36565u))), select(!select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, false, false, false), vec4<bool>(var_0.x, var_1, true, var_1)), !vec4<bool>(var_1, true, false, true), all(!var_0.yzz))), vec4<bool>(var_0.x, any(vec2<bool>(var_0.x == true, select(true, var_0.x, true))), false, func_3(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, 54874u), vec2<u32>(u_input.c, u_input.c) | vec2<u32>(4294967295u, u_input.c))).x));
    global1 = array<Struct_2, 6>();
    global0 = array<vec4<u32>, 20>();
    global2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.d.b.a))))), ~vec2<i32>(i32(-1i) * -6748i, -1i));
}

