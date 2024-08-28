struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: array<bool, 21> = array<bool, 21>(true, false, false, false, false, true, true, true, false, false, false, true, true, false, true, false, false, false, true, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec4<f32>) -> f32 {
    global0 = array<bool, 24>();
    var var_0 = any(!select(vec4<bool>(true, false, all(arg_0.e), true), select(!vec4<bool>(false, true, arg_2.e.x, true), vec4<bool>(true, true, true, true), vec4<bool>(arg_1.x, arg_0.e.x, arg_2.e.x, true)), false));
    var var_1 = 17137i;
    var var_2 = arg_0.a;
    let var_3 = _wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -123f)));
    return var_3;
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_1(-_wgslsmith_clamp_i32(countOneBits(_wgslsmith_mod_i32(-2147483647i, arg_0.x)), (u_input.a.x << (u_input.d % 32u)) & -35539i, _wgslsmith_mod_i32(4580i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 21761i, 2147483647i), u_input.a))), vec3<bool>(true, any(vec4<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(51304u, 24u)], true, false)), true, true, !global1[_wgslsmith_index_u32(u_input.e.x, 21u)])), false), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, arg_1)) >= 326f, global1[_wgslsmith_index_u32(3007u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], any(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], true, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(55193u, 21u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_2.x, 21u)], global0[_wgslsmith_index_u32(0u, 24u)], false), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], false, global0[_wgslsmith_index_u32(arg_2.x, 24u)]))) | select(true, global0[_wgslsmith_index_u32(u_input.d, 24u)], select(global1[_wgslsmith_index_u32(49651u, 21u)], global1[_wgslsmith_index_u32(u_input.c.x, 21u)], true))), global1[_wgslsmith_index_u32(countOneBits(countOneBits(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(4294967295u, arg_2.x, u_input.d, u_input.e.x)))), 21u)]);
    let var_1 = var_0;
    return select(var_0.b.xx, vec2<bool>(!(!global0[_wgslsmith_index_u32(u_input.b, 24u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(30342u, ~u_input.c.x), ~firstLeadingBit(arg_2.yx)), 21u)]), global1[_wgslsmith_index_u32(arg_2.x, 21u)]);
}

fn func_2() -> Struct_3 {
    var var_0 = ~_wgslsmith_mult_u32(~1u, countOneBits(_wgslsmith_add_u32(~u_input.d, _wgslsmith_clamp_u32(u_input.c.x, 6471u, 32174u))));
    global0 = array<bool, 24>();
    return Struct_3(-5320i, ~_wgslsmith_mult_vec4_u32(u_input.e, ~u_input.e), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -231f)))), -1389f, func_3(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(0i, u_input.a.x) << ((u_input.d << (9153u % 32u)) % 32u), u_input.a.x), 1f, _wgslsmith_mod_vec4_u32(vec4<u32>(2268u, ~u_input.d, 1u, ~13194u), vec4<u32>(u_input.c.x, 64307u, 0u | u_input.d, 38046u))));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> i32 {
    global1 = array<bool, 21>();
    var var_0 = !any(arg_0.e);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(921f, 1618f, arg_0.c, arg_0.d)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(430f, arg_0.c, arg_0.d, arg_0.c), vec4<f32>(arg_0.c, arg_0.d, arg_0.c, arg_0.c), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(273f, arg_0.c, arg_0.c, -503f))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1293f, 680f, arg_0.d, -1911f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-429f, arg_0.d, -1872f, -849f), vec4<f32>(arg_0.c, arg_0.d, -397f, arg_0.c)))))), select(vec4<bool>(true, false, 4294967295u != _wgslsmith_clamp_u32(1u, 0u, 69951u), all(arg_0.e)), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 24u)], false, global0[_wgslsmith_index_u32(4294967295u, 24u)], true), !vec4<bool>(true, global1[_wgslsmith_index_u32(24644u, 21u)], true, false), global0[_wgslsmith_index_u32(arg_0.b.x, 24u)]), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(72596u, 24u)], true, true)), false), select(select(select(vec4<bool>(arg_1, true, global0[_wgslsmith_index_u32(85992u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 21u)]), vec4<bool>(arg_0.e.x, true, false, true), vec4<bool>(arg_0.e.x, false, false, global0[_wgslsmith_index_u32(1u, 24u)])), vec4<bool>(arg_0.e.x, global0[_wgslsmith_index_u32(51939u, 24u)], false, true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(163u, 24u)], true, false), vec4<bool>(false, arg_1, arg_0.e.x, arg_0.e.x), vec4<bool>(arg_0.e.x, arg_1, true, false))), vec4<bool>(false, global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 21u)], true, arg_0.e.x && true), select(vec4<bool>(true, arg_0.e.x, false, global1[_wgslsmith_index_u32(u_input.d, 21u)]), vec4<bool>(true, true, true, true), true)))));
    var_0 = (~18706u | ~_wgslsmith_add_u32(0u >> (0u % 32u), u_input.e.x)) >= max(4294967295u, abs(~6450u));
    global0 = array<bool, 24>();
    return _wgslsmith_sub_i32(u_input.a.x, u_input.a.x);
}

fn func_5(arg_0: i32) -> u32 {
    global0 = array<bool, 24>();
    var var_0 = abs(vec4<u32>(u_input.c.x, ~u_input.b, _wgslsmith_clamp_u32(~(~50657u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(10679u, 38424u), u_input.e.ww), func_2().b.yx), u_input.d), _wgslsmith_div_u32((u_input.d << (u_input.d % 32u)) | ~4294967295u, ~reverseBits(5252u))));
    let var_1 = Struct_2(_wgslsmith_sub_u32(~(10988u & ~var_0.x), var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -549f), 1f, _wgslsmith_f_op_f32(ceil(1013f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-852f + -692f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-812f * -286f) - _wgslsmith_f_op_f32(f32(-1f) * -591f)), _wgslsmith_f_op_f32(exp2(func_2().c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f - -1174f)), _wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * 922f))))), Struct_1(u_input.a.x, vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 21u)], !(global1[_wgslsmith_index_u32(4294967295u, 21u)] && global0[_wgslsmith_index_u32(u_input.b, 24u)])), vec4<bool>(false, func_2().e.x, true, global1[_wgslsmith_index_u32(~var_0.x, 21u)]), false && any(func_3(vec3<i32>(u_input.a.x, arg_0, arg_0), 1272f, vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x)))), Struct_1(_wgslsmith_sub_i32(~arg_0 | -24403i, -2147483647i), vec3<bool>(false, !any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(var_0.x, 24u)], true, global0[_wgslsmith_index_u32(0u, 24u)])), !(!global0[_wgslsmith_index_u32(0u, 24u)])), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(15524u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(114313u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)])), vec4<bool>(u_input.b >= var_0.x, true, true, u_input.a.x >= arg_0), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)], global1[_wgslsmith_index_u32(16779u, 21u)]))), !select(global1[_wgslsmith_index_u32(var_0.x, 21u)], global0[_wgslsmith_index_u32(countOneBits(var_0.x), 24u)], false)));
    global1 = array<bool, 21>();
    var var_2 = Struct_2(1u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1512f))), 1064f, var_1.c.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(var_1.c.x + var_1.c.x)), _wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_div_vec4_f32(var_1.c, vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(2147483647i, u_input.e, var_1.c.x, 1808f, vec2<bool>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(var_0.x, 21u)])), func_3(vec3<i32>(1i, u_input.a.x, var_1.d.a), -211f, vec4<u32>(var_0.x, 4294967295u, 65208u, u_input.d)), Struct_3(50473i, u_input.e, var_1.b.x, var_1.c.x, vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], false)), vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, 187f))), _wgslsmith_f_op_f32(round(-1084f)), _wgslsmith_f_op_f32(f32(-1f) * -509f), 1341f)), Struct_1(var_1.d.a, vec3<bool>(true, true, (u_input.d >= var_1.a) && func_3(vec3<i32>(24592i, 2147483647i, 0i), var_1.b.x, vec4<u32>(var_0.x, 4294967295u, 1u, 4294967295u)).x), vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], true, _wgslsmith_f_op_f32(func_1(Struct_3(11038i, vec4<u32>(u_input.e.x, var_1.a, 1u, 9998u), var_1.b.x, -377f, vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 21u)], true)), vec2<bool>(var_1.d.c.x, false), Struct_3(-35624i, vec4<u32>(var_0.x, 77198u, 43174u, 1u), 163f, 1149f, var_1.d.b.xz), var_1.c)) == _wgslsmith_f_op_f32(-var_1.c.x), false), false), var_1.e);
    return _wgslsmith_dot_vec4_u32(~abs(_wgslsmith_add_vec4_u32(u_input.e << (vec4<u32>(1u, 0u, 0u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(var_1.a, 50666u, var_1.a, u_input.d) | u_input.e)), u_input.e);
}

fn func_6(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<bool, 24>();
    var var_0 = ~(~arg_2.x);
    var var_1 = Struct_3(select(-1i, ~_wgslsmith_mult_i32(2147483647i, arg_3.x), true) | -12027i, u_input.e, _wgslsmith_f_op_f32(-func_2().d), -550f, vec2<bool>(!func_3(u_input.a.zxz, -1000f, u_input.e).x, -max(arg_3.x, -1i) <= _wgslsmith_div_i32(2147483647i, 2147483647i)));
    var_0 = u_input.e.x | ((~(~2551u) >> (max(u_input.d, ~arg_1) % 32u)) >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(var_1.b.zx) & max(vec2<u32>(u_input.c.x, arg_2.x), arg_2), reverseBits(arg_2)) % 32u));
    global0 = array<bool, 24>();
    return Struct_1(-func_4(func_2(), any(!vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 24u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 24u)]))), vec3<bool>(arg_0.x < _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_3.zz, arg_0, arg_0), u_input.a.xz), var_1.e.x && func_3(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_add_vec4_u32(var_1.b, u_input.e)).x, global0[_wgslsmith_index_u32(min(~37284u, 4294967295u), 24u)]), vec4<bool>(false, !any(select(vec4<bool>(var_1.e.x, true, true, false), vec4<bool>(var_1.e.x, false, var_1.e.x, false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_2.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)]))), global1[_wgslsmith_index_u32(4294967295u, 21u)] || global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~15755u, 4692u & var_1.b.x), 24u)], !(false == func_2().e.x)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(1198f));
    global0 = array<bool, 24>();
    let var_1 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.e.x, 1u, 0u)), u_input.c & vec3<u32>(1u, 1u, u_input.b)) ^ ~38558u, u_input.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -127f, -802f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(2710i, u_input.e, -1000f, 199f, vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 21u)], false)), vec2<bool>(global0[_wgslsmith_index_u32(29900u, 24u)], true), Struct_3(-2147483647i, vec4<u32>(1u, 74876u, 4294967295u, 1u), var_0, var_0, vec2<bool>(false, global1[_wgslsmith_index_u32(24604u, 21u)])), vec4<f32>(var_0, -316f, 560f, -287f))), 668f, _wgslsmith_f_op_f32(1604f + var_0), _wgslsmith_f_op_f32(min(var_0, -129f))))), func_6(~u_input.a.xz, func_5(func_4(func_2(), !global1[_wgslsmith_index_u32(7224u, 21u)])), firstTrailingBit(~(~u_input.e.yz)), u_input.a.xyx), Struct_1(-_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) | 1389i, !select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(75388u, 24u)], global1[_wgslsmith_index_u32(u_input.b, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(28329u, 21u)], global1[_wgslsmith_index_u32(u_input.b, 21u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 21u)])), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(u_input.d, 24u)], global1[_wgslsmith_index_u32(5640u, 21u)]), false), !select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 24u)], false, global1[_wgslsmith_index_u32(u_input.e.x, 21u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.d, 21u)], global0[_wgslsmith_index_u32(1u, 24u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 21u)], global1[_wgslsmith_index_u32(30867u, 21u)], global0[_wgslsmith_index_u32(u_input.d, 24u)])), global0[_wgslsmith_index_u32(1u, 24u)]));
    let var_2 = Struct_2(~_wgslsmith_mult_u32(func_2().b.x, 58771u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.c.wwy)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-509f, var_0, 783f)))) + _wgslsmith_div_vec3_f32(var_1.c.wzz, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, -1560f, -1161f), var_1.c.wyy)), var_1.c.yxw)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, var_0)), -429f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1.b.x, var_0)))))), func_6(-u_input.a.yy, u_input.e.x, ~u_input.c.xz, u_input.a.zxw), Struct_1(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.a.x), !vec3<bool>(!var_1.e.d, !global1[_wgslsmith_index_u32(var_1.a, 21u)], false), var_1.d.c, true));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_2.d.a, var_1.e.a, true), u_input.c, abs(var_1.a));
}

