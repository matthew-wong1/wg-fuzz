struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19>;

var<private> global1: array<Struct_4, 4>;

var<private> global2: vec4<i32>;

var<private> global3: array<vec4<f32>, 20>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: i32) -> u32 {
    var var_0 = min(vec3<i32>(global2.x, global2.x, 2147483647i), vec3<i32>(-u_input.a, ~(~(-7183i)), arg_0)) << ((~vec3<u32>(~13808u, abs(38090u), arg_1.x) ^ ~reverseBits(arg_1.wyw ^ vec3<u32>(13637u, arg_1.x, arg_1.x))) % vec3<u32>(32u));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-114f - -900f), _wgslsmith_div_f32(442f, 571f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1413f)) + _wgslsmith_f_op_f32(f32(-1f) * -123f)), _wgslsmith_f_op_f32(round(921f))))), Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1364f, 1000f, 671f, 1212f))), _wgslsmith_f_op_f32(-192f - 518f), countOneBits(max(vec4<i32>(global2.x, arg_0, u_input.a, -2147483647i) << (vec4<u32>(u_input.b, u_input.b, u_input.b, arg_1.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2, 0i, var_0.x, -16334i), vec4<i32>(-7315i, -18209i, -56930i, -44647i)))), 15727i));
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(~countOneBits(~(u_input.b ^ 0u)), 20u)], var_1.b);
    return 0u;
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_4, 4>();
    var var_0 = Struct_1(any(vec3<bool>(true, any(vec3<bool>(false, false, false)) & true, (46222u == u_input.b) || true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, -502f, _wgslsmith_div_f32(992f, 851f), _wgslsmith_f_op_f32(-417f * 327f))), _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(u_input.b, 20u)] * _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.b, 20u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(523f, 234f)), _wgslsmith_f_op_f32(1218f + 104f)) - 1514f)), vec4<i32>(-_wgslsmith_div_i32(-12814i, global2.x), u_input.a, u_input.a, _wgslsmith_sub_i32(global2.x, _wgslsmith_add_i32(reverseBits(global2.x), 36798i >> (u_input.b % 32u)))), global2.x);
    global3 = array<vec4<f32>, 20>();
    let var_1 = Struct_3(-1000f, ~vec2<u32>(~(~1u), ~0u), u_input.a);
    var var_2 = ~(~vec4<u32>(~var_1.b.x, func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e, 9002i, var_0.d.x), vec3<i32>(var_0.e, u_input.a, u_input.a)), ~vec4<u32>(u_input.b, var_1.b.x, 1u, u_input.b), _wgslsmith_mult_i32(u_input.a, global2.x)), 4458u, var_1.b.x));
    return Struct_1(any(select(vec3<bool>(true, true, select(true, var_0.a, var_0.a)), vec3<bool>(var_0.a, true, var_0.a || var_0.a), select(select(vec3<bool>(true, var_0.a, false), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, true, true)), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(false, false, var_0.a), true), !vec3<bool>(false, var_0.a, false)))), global3[_wgslsmith_index_u32(~var_2.x, 20u)], -294f, vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(u_input.a, -u_input.a, -u_input.a, u_input.a)), _wgslsmith_add_i32(~firstTrailingBit(-990i), global2.x), -9195i, 2243i), -1i & _wgslsmith_div_i32(_wgslsmith_div_i32(var_0.e, _wgslsmith_clamp_i32(u_input.a, global2.x, -18633i)), i32(-1i) * -var_0.d.x));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    global2 = ~_wgslsmith_add_vec4_i32(arg_3.b.d, vec4<i32>(1i, _wgslsmith_mod_i32(arg_3.b.d.x >> (56976u % 32u), _wgslsmith_mult_i32(1i, 1i)), _wgslsmith_add_i32(func_2().e, -18385i), select(_wgslsmith_dot_vec2_i32(vec2<i32>(-28808i, u_input.a), global2.ww), 1i, arg_1.x)));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1426f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-457f - -1096f), arg_3.b.b.x, !arg_1.x)))), ~vec2<u32>(u_input.b | ~u_input.b, ~_wgslsmith_div_u32(u_input.b, 3187u)), max(-2147483647i, arg_3.b.e));
    var var_1 = Struct_1(arg_1.x, func_2().b, _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-var_0.a))), arg_3.b.d, global2.x);
    var var_2 = 1u;
    let var_3 = func_2();
    return Struct_3(-599f, min(select(var_0.b, ~vec2<u32>(u_input.b, 7510u), any(vec4<bool>(true, true, true, true))), ~_wgslsmith_mult_vec2_u32(var_0.b ^ var_0.b, ~vec2<u32>(var_0.b.x, 17369u))), _wgslsmith_sub_i32(global2.x, ~arg_3.b.e) >> (((min(var_0.b.x, 1u) >> (_wgslsmith_sub_u32(1u, u_input.b) % 32u)) | 13872u) % 32u));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 20u)]) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -129f))))), func_2());
    var var_1 = vec2<bool>(var_0.b.a, var_0.b.a || !(!func_2().a));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.b.d << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, arg_1.x, 4294967295u), vec4<u32>(u_input.b, arg_2.b.x, u_input.b, 13865u) | vec4<u32>(0u, 26363u, 13561u, 0u), vec4<u32>(4294967295u, arg_1.x, u_input.b, 4294967295u) & vec4<u32>(65511u, 30048u, 1u, 1258u)) % vec4<u32>(32u)), var_0.b.d), u_input.a, global2.x, u_input.a);
    global2 = vec4<i32>(_wgslsmith_mult_i32(arg_2.c, ~select(global2.x, -2147483647i, true)) ^ var_2.x, _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(~global2.ww, min(var_0.b.d.wy, var_2.zy)), vec2<i32>(~(-32526i), _wgslsmith_dot_vec2_i32(var_2.zw, vec2<i32>(-22472i, 9428i))) << ((~vec2<u32>(74294u, arg_2.b.x) >> (max(arg_2.b, arg_1.xz) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, _wgslsmith_div_i32(37314i, var_0.b.d.x) << (countOneBits(1u) % 32u)), global2.x), 1i);
    var_1 = !(!select(select(!vec2<bool>(var_0.b.a, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x), vec2<bool>(24947i <= u_input.a, true), !vec2<bool>(var_0.b.a, false)));
    return 141u;
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = ~firstLeadingBit(vec4<u32>(15949u, 47317u, arg_0.d.x >> (~12456u % 32u), select(arg_0.d.x, ~1u, !arg_0.c.x)));
    var var_1 = 0i;
    global1 = array<Struct_4, 4>();
    var_0 = vec4<u32>(select(4294967295u, min(_wgslsmith_clamp_u32(1u & arg_0.d.x, func_5(vec4<f32>(arg_0.a.x, arg_3.x, 1747f, 477f), var_0.wzw, Struct_3(arg_1, arg_0.d, 47109i)), ~48230u), 38810u), true), u_input.b, 0u, select(_wgslsmith_add_u32(var_0.x, ~u_input.b) & arg_0.b, _wgslsmith_mult_u32(8198u, reverseBits(abs(u_input.b))), true));
    global2 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(-u_input.a, countOneBits(31487i), _wgslsmith_div_i32(global2.x, 1i), _wgslsmith_div_i32(-10093i, global2.x)))), firstTrailingBit(abs(vec4<i32>(u_input.a, -2147483647i, u_input.a, 26342i))) >> (reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 4294967295u, arg_0.b, 4294967295u), vec4<u32>(var_0.x, arg_0.b, u_input.b, 0u)) << (vec4<u32>(8136u, arg_0.d.x, 15255u, arg_0.d.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(u_input.a, func_2().d.x), func_2().d.x, -(~(~u_input.a)), -global2.x));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, global0[_wgslsmith_index_u32(u_input.b, 19u)], arg_0.c.x, Struct_2(global3[_wgslsmith_index_u32(38234u, 20u)], Struct_1(arg_0.c.x, global3[_wgslsmith_index_u32(arg_0.b, 20u)], -1856f, vec4<i32>(u_input.a, 0i, global2.x, global2.x), 1i))).a + _wgslsmith_f_op_f32(f32(-1f) * -454f)))), var_0.xy, u_input.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> Struct_4 {
    let var_0 = !vec3<bool>(!any(vec2<bool>(true, true)), !(u_input.a < _wgslsmith_sub_i32(u_input.a, u_input.a)), any(select(global0[_wgslsmith_index_u32(~4294967295u, 19u)], select(global0[_wgslsmith_index_u32(48742u, 19u)], vec4<bool>(arg_0.x, true, arg_0.x, false), false), !global0[_wgslsmith_index_u32(arg_1, 19u)])));
    var var_1 = var_0.yx;
    let var_2 = func_6(global1[_wgslsmith_index_u32(func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2566f, 1915f, -491f, 263f)) + vec4<f32>(-595f, -302f, -689f, -2140f)), global3[_wgslsmith_index_u32(~57589u, 20u)]), ~(select(vec3<u32>(1u, 19928u, 10947u), vec3<u32>(1u, 1u, arg_1), vec3<bool>(true, true, false)) >> (min(vec3<u32>(115592u, 41076u, arg_1), vec3<u32>(40580u, 1439u, arg_1)) % vec3<u32>(32u))), func_4(any(!vec3<bool>(var_0.x, arg_0.x, arg_0.x)), vec4<bool>(true, any(var_0), false, var_1.x), true && arg_0.x, Struct_2(_wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(3813u, 20u)], vec4<f32>(-244f, -1458f, 1000f, 1809f)), func_2()))), 4u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-2256f, -562f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(false, global0[_wgslsmith_index_u32(arg_1, 19u)], var_0.x, Struct_2(vec4<f32>(449f, -1000f, -1333f, -624f), Struct_1(true, global3[_wgslsmith_index_u32(21558u, 20u)], 2232f, vec4<i32>(-2147483647i, -13512i, -43188i, 2147483647i), u_input.a))).a * _wgslsmith_f_op_f32(sign(1736f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(275f + 1077f) + _wgslsmith_f_op_f32(1954f + -1364f)), 1457f) - func_2().c), global3[_wgslsmith_index_u32(~1u, 20u)]);
    var var_3 = Struct_1(false, vec4<f32>(var_2.a, var_2.a, func_4((true | var_0.x) && true, vec4<bool>(true, false, func_2().a, arg_0.x), u_input.a >= reverseBits(3764i), Struct_2(vec4<f32>(970f, 704f, var_2.a, var_2.a), Struct_1(true, vec4<f32>(448f, -1387f, -2040f, var_2.a), 589f, vec4<i32>(-65108i, 0i, -47684i, global2.x), -9451i))).a, _wgslsmith_f_op_f32(-func_6(Struct_4(vec3<f32>(-1152f, 1259f, var_2.a), var_2.b.x, vec4<bool>(true, true, var_1.x, false), vec2<u32>(var_2.b.x, arg_1)), var_2.a, _wgslsmith_f_op_f32(var_2.a * var_2.a), _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(28281u, 20u)])).a)), 440f, countOneBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(-9781i, 2147483647i, 2147483647i, u_input.a) << (vec4<u32>(arg_1, 8769u, u_input.b, 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.c, 2147483647i, 2147483647i, -313i), vec4<i32>(var_2.c, u_input.a, var_2.c, -1i)))), global2.x);
    let var_4 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a, _wgslsmith_f_op_f32(-793f * _wgslsmith_f_op_f32(floor(-416f))), -677f))), ~_wgslsmith_sub_u32(countOneBits(u_input.b >> (0u % 32u)), var_2.b.x), vec4<bool>(var_1.x, all(global0[_wgslsmith_index_u32(1u, 19u)]) | true, select(var_3.b.x > -382f, !all(var_0.yx), false != !var_3.a), true), vec2<u32>(firstTrailingBit(arg_1), arg_1));
    return Struct_4(vec3<f32>(361f, _wgslsmith_f_op_f32(min(-1285f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a))))), -714f), _wgslsmith_sub_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(var_4.d, vec2<u32>(4294967295u, 5590u)), var_4.b), _wgslsmith_sub_u32(59923u, arg_1)), select(select(select(select(global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(1u, 19u)], true), global0[_wgslsmith_index_u32(~var_4.b, 19u)], false), vec4<bool>(all(vec2<bool>(true, var_1.x)), arg_0.x, arg_0.x || false, 1u < arg_1), var_4.c.x), select(vec4<bool>(all(vec4<bool>(var_1.x, arg_0.x, var_3.a, false)), all(vec4<bool>(var_1.x, false, false, var_0.x)), u_input.a >= var_3.d.x, any(vec2<bool>(true, false))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, var_4.c.x, var_3.a, var_0.x), var_4.c), !global0[_wgslsmith_index_u32(var_2.b.x, 19u)], true), _wgslsmith_dot_vec2_i32(global2.xz, vec2<i32>(-2147483647i, 70712i)) != global2.x), vec4<bool>(!(var_2.b.x < 0u), var_0.x, var_4.c.x, true)), var_4.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 20>();
    global1 = array<Struct_4, 4>();
    let var_0 = func_1(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))), vec3<bool>(all(vec3<bool>(false, false, true)) == true, true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, any(vec3<bool>(false, false, true))))), u_input.b | (~1u | ~(~u_input.b)));
    var var_1 = vec3<bool>(func_1(select(vec3<bool>(true, func_2().a, all(var_0.c)), select(!var_0.c.ywx, func_1(vec3<bool>(false, true, var_0.c.x), 4294967295u).c.wxw, func_1(vec3<bool>(var_0.c.x, false, false), 1u).c.wyy), vec3<bool>(var_0.c.x, var_0.c.x, !var_0.c.x)), 42999u).c.x, any(select(var_0.c.xwy, var_0.c.ywx, true)) | all(func_1(var_0.c.yyx, var_0.b).c), var_0.c.x);
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-285f + func_1(!vec3<bool>(var_0.c.x, true, true), ~1u).a.x), _wgslsmith_f_op_f32(abs(var_0.a.x)), -298f, 373f), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b);
}

