struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 45056u, 4294967295u);

var<private> global1: array<vec2<i32>, 25>;

var<private> global2: vec4<i32> = vec4<i32>(4633i, 1366i, -22859i, i32(-2147483648));

var<private> global3: Struct_5 = Struct_5(Struct_4(vec2<bool>(false, true), Struct_2(Struct_1(vec2<bool>(false, true), -14436i, true, vec3<u32>(3557u, 0u, 5500u))), Struct_2(Struct_1(vec2<bool>(true, true), -1i, false, vec3<u32>(27126u, 33443u, 0u))), 15876u, Struct_3(vec4<bool>(false, true, false, true))), Struct_3(vec4<bool>(false, false, false, false)), vec4<i32>(-12495i, 2147483647i, -20424i, -7072i), vec4<i32>(-29413i, 2147483647i, 0i, -1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec2<u32>) -> vec4<i32> {
    var var_0 = ~(~0u);
    global2 = global3.d >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, 26190u, 92436u, 3865u), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2.x, arg_2.x, global0.x, 39093u) | ~vec4<u32>(global3.a.c.a.d.x, 4294967295u, 4294967295u, 29181u), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(9908u, 0u, 0u, global3.a.d), vec4<u32>(70644u, global3.a.c.a.d.x, global3.a.b.a.d.x, global3.a.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, 36491u, arg_2.x, arg_2.x), vec4<u32>(global0.x, 12678u, arg_2.x, global3.a.b.a.d.x))))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, arg_1) + arg_1) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(-arg_1), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) * arg_1) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 - arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-arg_1)))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(667f, arg_1))) * _wgslsmith_f_op_f32(arg_1 * arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)) + arg_1))));
    var var_2 = Struct_1(vec2<bool>(!(!(!arg_0.a.x)), _wgslsmith_mod_u32(firstLeadingBit(global0.x), global3.a.d) < abs(~4294967295u)), min(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x & u_input.a.x, i32(-1i) * -2147483647i), (global3.d.xz & vec2<i32>(2147483647i, 29978i)) >> ((vec2<u32>(global0.x, arg_2.x) >> (vec2<u32>(global0.x, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))), -global2.x), all(arg_0.a.xzw), ~global3.a.b.a.d);
    let var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(max(_wgslsmith_clamp_vec2_u32(arg_2, vec2<u32>(var_2.d.x, global0.x) << (vec2<u32>(11801u, 1u) % vec2<u32>(32u)), vec2<u32>(1u, global3.a.b.a.d.x)), vec2<u32>(~arg_2.x, _wgslsmith_dot_vec3_u32(global3.a.c.a.d, global3.a.b.a.d))), vec2<u32>(global0.x, arg_2.x)), global3.a.c.a.d.yx);
    return ~(-(~countOneBits(-global3.c)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    global3 = Struct_5(global3.a, Struct_3(global3.a.e.a), -firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(global2.x, 15553i), -global2.x, ~global2.x, 2147483647i << (global3.a.d % 32u))), abs(~_wgslsmith_clamp_vec4_i32(func_3(global3.a.e, arg_2, vec2<u32>(global0.x, 1u)), func_3(global3.a.e, arg_0, vec2<u32>(global3.a.b.a.d.x, global0.x)), u_input.a)));
    let var_0 = Struct_5(global3.a, Struct_3(!(!select(vec4<bool>(global3.b.a.x, global3.b.a.x, true, global3.a.a.x), vec4<bool>(global3.a.e.a.x, true, global3.a.e.a.x, global3.b.a.x), global3.a.b.a.a.x))), -(-max(vec4<i32>(global3.a.c.a.b, -3116i, 2147483647i, u_input.d.x), u_input.d) >> (~(~vec4<u32>(0u, global3.a.c.a.d.x, global3.a.c.a.d.x, 0u)) % vec4<u32>(32u))), global3.d);
    var var_1 = Struct_2(Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(true, global3.b.a.x), var_0.a.b.a.a)), ~(-43559i), _wgslsmith_mult_i32(~0i, ~u_input.a.x) < _wgslsmith_dot_vec2_i32(~vec2<i32>(15840i, -2147483647i), vec2<i32>(global2.x, u_input.b.x) & global2.yz), ~global3.a.c.a.d));
    let var_2 = arg_3.zyz;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-777f, _wgslsmith_f_op_f32(round(-731f)), -1000f, 1000f) * vec4<f32>(1f, arg_0, _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -260f), -180f)))) + arg_3);
    return _wgslsmith_div_f32(var_3.x, var_2.x);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = -1204i;
    var var_1 = vec2<bool>(false, !(_wgslsmith_f_op_f32(1331f * -118f) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1)))));
    var_1 = global3.a.b.a.a;
    let var_2 = 49633u;
    let var_3 = _wgslsmith_dot_vec2_i32(~(_wgslsmith_clamp_vec2_i32(~u_input.d.wy, global1[_wgslsmith_index_u32(75070u, 25u)], vec2<i32>(38185i, 10206i)) & select(global2.ww, vec2<i32>(-426i, var_0), select(global3.a.e.a.yx, global3.a.b.a.a, vec2<bool>(true, true)))), max(global2.zz, ~global1[_wgslsmith_index_u32(36454u, 25u)]));
    return global3.a.b.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<u32> {
    var var_0 = Struct_3(!global3.a.e.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(522f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-150f)) + _wgslsmith_f_op_f32(-2605f - 365f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2117f + _wgslsmith_f_op_f32(-740f - 271f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1958f)))), _wgslsmith_f_op_f32(f32(-1f) * -1452f)));
    let var_2 = arg_0.b;
    var var_3 = global3.b;
    var var_4 = arg_0;
    return vec3<u32>(1u, global3.a.d, global3.a.c.a.d.x);
}

fn func_1() -> Struct_4 {
    global0 = func_5(func_4(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(-887f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, 1352f, 970f)), -632f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(859f, -911f, -951f, 560f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1525f, 1671f)) - _wgslsmith_f_op_f32(-192f - -1523f)))), reverseBits(0u)), select(!(!select(global3.b.a.wzz, vec3<bool>(true, global3.b.a.x, global3.a.e.a.x), global3.b.a.x)), vec3<bool>(true, !global3.a.e.a.x || !global3.a.e.a.x, any(!vec4<bool>(true, global3.a.e.a.x, global3.a.a.x, true))), select(vec3<bool>(false, !global3.a.e.a.x, true), vec3<bool>(global3.a.c.a.a.x, global3.a.a.x & false, true), global3.b.a.zzx)));
    var var_0 = select(vec2<i32>(global3.c.x, countOneBits(_wgslsmith_add_i32(global3.a.b.a.b, 2147483647i)) ^ _wgslsmith_mult_i32(~global3.a.b.a.b, -2147483647i)), global1[_wgslsmith_index_u32(0u, 25u)], select(vec2<bool>(global3.a.e.a.x & false, all(vec3<bool>(false, global3.b.a.x, false))), select(func_4(global0.x << (global0.x % 32u), _wgslsmith_f_op_f32(step(734f, -355f)), _wgslsmith_clamp_u32(global0.x, 17179u, global0.x)).a, vec2<bool>(all(global3.a.b.a.a), global2.x >= global3.a.b.a.b), vec2<bool>(func_4(global3.a.b.a.d.x, 731f, 12421u).a.x, global3.b.a.x && global3.b.a.x)), true));
    let var_1 = global3.a.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1265f, 383f, 1048f, -1209f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-103f, -467f, 1217f, 178f))), false))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-632f, 1000f, 368f, -773f), vec4<f32>(1193f, -1424f, 766f, -642f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-749f, -461f, 320f, 728f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1244f, -202f, -321f, 632f))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(703f, -1000f), _wgslsmith_f_op_f32(-256f + 174f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -892f) * _wgslsmith_f_op_f32(round(1686f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1013f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(round(-983f))))));
    let var_3 = _wgslsmith_sub_vec3_u32(~func_5(Struct_1(!var_1.a.a, 20804i, var_1.a.a.x, abs(global3.a.c.a.d)), vec3<bool>(false, any(vec2<bool>(var_1.a.a.x, var_1.a.c)), any(vec3<bool>(var_1.a.c, var_1.a.a.x, var_1.a.c)))), vec3<u32>(0u, 16435u, ~34137u));
    return Struct_4(vec2<bool>(all(global3.b.a.yzw), false), global3.a.b, Struct_2(var_1.a), _wgslsmith_clamp_u32(global0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_3.x, 0u, global0.x)), global3.a.b.a.d), _wgslsmith_mult_u32(14007u, var_3.x) & 1u), var_3.x), Struct_3(vec4<bool>(all(select(vec3<bool>(global3.a.a.x, var_1.a.c, global3.a.a.x), vec3<bool>(global3.b.a.x, global3.a.e.a.x, var_1.a.a.x), global3.b.a.x)), !(global3.b.a.x && var_1.a.a.x), var_2.x != 762f, global3.a.b.a.a.x)));
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    var var_0 = u_input.a | (_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global3.c, vec4<i32>(global3.c.x, u_input.d.x, 57464i, 46927i)), vec4<i32>(-1i, -9192i, arg_0.c.a.b, u_input.c)), -vec4<i32>(u_input.a.x, 43048i, arg_0.b.a.b, 14550i) << (~vec4<u32>(60876u, global0.x, global3.a.c.a.d.x, global3.a.c.a.d.x) % vec4<u32>(32u)), ~firstLeadingBit(vec4<i32>(arg_0.b.a.b, global2.x, 51871i, -2147483647i))) << (min(firstLeadingBit(countOneBits(vec4<u32>(global3.a.d, 4294967295u, 34422u, 38070u))), firstTrailingBit(countOneBits(vec4<u32>(43209u, 4294967295u, global0.x, arg_0.b.a.d.x)))) % vec4<u32>(32u)));
    var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f - 1669f)))));
    var var_2 = global3.d.zzz | (vec3<i32>(_wgslsmith_mult_i32(-1i, abs(2147483647i)), firstTrailingBit(1213i), -(i32(-1i) * -2147483647i)) | u_input.d.zzx);
    var_2 = vec3<i32>(2147483647i, reverseBits(_wgslsmith_mod_i32(arg_0.c.a.b, -42319i)), -2147483647i);
    return Struct_1(arg_0.a, u_input.a.x, arg_0.e.a.x, arg_0.c.a.d);
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global2 = -select(u_input.d, vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_2.b, u_input.b.x), vec3<i32>(-25307i, u_input.d.x, arg_1.a.b)), _wgslsmith_sub_i32(arg_1.a.b, ~2147483647i), ~20879i, func_6(func_1()).b), func_1().e.a.x);
    let var_0 = Struct_3(!select(vec4<bool>(global3.a.b.a.c, arg_2.b < global2.x, true, false), vec4<bool>(true, true, arg_1.a.a.x, 0u == arg_2.d.x), global3.b.a));
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.c.a.d.x, 4294967295u, global0.x, global3.a.b.a.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(39693u, 76975u, 0u, arg_2.d.x), vec4<u32>(arg_2.d.x, global0.x, arg_1.a.d.x, 1u), vec4<u32>(4294967295u, 51846u, global3.a.d, global0.x))), ~func_6(Struct_4(vec2<bool>(false, arg_1.a.c), global3.a.b, Struct_2(arg_1.a), global3.a.b.a.d.x, var_0)).d.x, 4294967295u), reverseBits(~(~vec3<u32>(0u, arg_2.d.x, 4294967295u))));
    global3 = Struct_5(Struct_4(vec2<bool>(true, true), arg_1, arg_1, global0.x, var_0), func_1().e, firstLeadingBit(select(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 21474i, global2.x, arg_2.b), vec4<i32>(arg_1.a.b, -2147483647i, -44399i, u_input.b.x)), ~vec4<i32>(u_input.b.x, 13311i, 18913i, arg_2.b), vec4<bool>(false, true, true, arg_1.a.a.x)) | global3.d), u_input.a);
    var var_1 = !global3.a.e.a.zzw;
    return 510f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(global3.a.d, ~28937u, ~global0.x, 0u);
    var var_1 = vec3<f32>(-180f, _wgslsmith_f_op_f32(func_7(60287u, Struct_2(Struct_1(vec2<bool>(true, global3.a.c.a.a.x), _wgslsmith_div_i32(-11098i, global2.x), global3.c.x == 61343i, _wgslsmith_mod_vec3_u32(vec3<u32>(global3.a.d, global3.a.d, 1u), vec3<u32>(var_0.x, 54093u, global3.a.c.a.d.x)))), func_6(func_1()))), 1f);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -110f, var_1.x) - vec3<f32>(var_1.x, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(var_1.x, 1125f)), 1f)))));
    let var_4 = u_input.c;
    var_1 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(~34193i, 2147483647i, u_input.c | u_input.b.x), -1i), ~vec2<i32>(_wgslsmith_dot_vec4_i32(global3.d, global3.d), ~u_input.b.x)));
}

