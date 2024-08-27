struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = -2147483647i;
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(636f, 1706f, 248f, 888f))))), 4294967295u, !vec3<bool>(false, global0[_wgslsmith_index_u32(51121u, 26u)], true), _wgslsmith_div_f32(-842f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1554f)))), !(!select(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 26u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 26u)], false, false), vec3<bool>(false, true, true), true), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)]))));
    var_1 = !vec3<bool>(all(select(!var_2.e, select(var_2.e, var_2.e, var_2.e), !vec3<bool>(var_2.e.x, var_2.e.x, false))), global0[_wgslsmith_index_u32(var_2.b << (reverseBits(var_2.b >> (0u % 32u)) % 32u), 26u)], any(!(!vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(32524u, 26u)], true, var_2.c.x))));
    var var_3 = var_2.e.xy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -157f);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(-2002f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(338f * 1979f)), -708f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -796f))), 11553u, vec3<bool>(_wgslsmith_div_u32(1u, u_input.c) > countOneBits(1u), (u_input.c << (u_input.c % 32u)) < ~u_input.b, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1069f) - _wgslsmith_f_op_f32(func_3(u_input.e.x)))), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 26u)], false))), false, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-361f, -398f)))) * vec2<f32>(_wgslsmith_f_op_f32(-130f * -1000f), -1029f)), vec2<f32>(-673f, _wgslsmith_f_op_f32(max(1f, -107f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-751f, 1000f)))))), Struct_2(u_input.e.xy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f + -2142f)), _wgslsmith_f_op_f32(-285f + -1099f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-276f, -419f)) * _wgslsmith_f_op_f32(f32(-1f) * -418f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-723f, 691f, 1050f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-174f, -169f, -173f), vec3<f32>(428f, 350f, 1312f), vec3<bool>(global0[_wgslsmith_index_u32(1u, 26u)], false, global0[_wgslsmith_index_u32(4294967295u, 26u)])))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -926f, -586f, -657f) + vec4<f32>(817f, 1392f, 1807f, 1660f))), ~_wgslsmith_add_u32(0u, u_input.b), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), -1643f, select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(27615u, 26u)], true, false), global0[_wgslsmith_index_u32(u_input.b & 30307u, 26u)]))));
    var var_1 = _wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -12297i, ~u_input.a.x), var_0.e.a.x, reverseBits(_wgslsmith_sub_i32(var_0.e.a.x, var_0.e.a.x)), 2147483647i), ~_wgslsmith_mod_vec4_i32((u_input.a >> (vec4<u32>(1u, var_0.e.d.b, 4294967295u, 4294967295u) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.b, u_input.b, 1261u, var_0.e.d.b), vec4<u32>(0u, 52689u, 45266u, 57990u), vec4<u32>(49105u, 88890u, 0u, u_input.b)) % vec4<u32>(32u)), u_input.a));
    var_0 = Struct_3(Struct_1(var_0.a.a, _wgslsmith_mult_u32(~29195u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.a.b), vec2<u32>(1u, u_input.c)) ^ 2534u), select(vec3<bool>(true, var_0.a.e.x, var_0.b & true), var_0.e.d.c, select(var_0.e.d.c, select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], false, true), var_0.a.e, false), var_0.e.d.e)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x - -172f)))), var_0.e.d.c), !any(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.e.d.b, 26u)], false, true), vec4<bool>(var_0.a.e.x, true, false, global0[_wgslsmith_index_u32(var_0.e.d.b, 26u)]), false), !vec4<bool>(var_0.a.e.x, false, global0[_wgslsmith_index_u32(61347u, 26u)], global0[_wgslsmith_index_u32(44794u, 26u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0.e.d.b, 26u)], var_0.e.d.e.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1425f, 998f)))), _wgslsmith_f_op_vec2_f32(var_0.e.c.zy + _wgslsmith_f_op_vec2_f32(var_0.c + vec2<f32>(var_0.c.x, -1000f)))) + _wgslsmith_div_vec2_f32(var_0.a.a.yw, _wgslsmith_f_op_vec2_f32(-var_0.c))), var_0.a.a.x, var_0.e);
    var var_2 = vec4<i32>(~(-_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_1.zzx, u_input.a.yzz), -u_input.a.zxz)), firstLeadingBit(u_input.e.x) & -1i, 2147483647i, var_0.e.a.x);
    var var_3 = ~u_input.c;
    return Struct_1(var_0.a.a, abs(76411u), vec3<bool>(var_0.b, all(var_0.e.d.c), ~_wgslsmith_add_u32(123885u, var_0.e.d.b) >= abs(73339u)), _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(-var_0.d))), vec3<bool>(false, true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> bool {
    let var_0 = true;
    var var_1 = func_2();
    let var_2 = vec3<i32>(u_input.e.x, reverseBits(arg_2.a.x), ~(~arg_2.a.x));
    let var_3 = max(select(select(firstTrailingBit(arg_0), max(reverseBits(vec4<u32>(var_1.b, 0u, arg_0.x, 60605u)), vec4<u32>(arg_1.b, u_input.b, 1u, 9907u)), !any(vec4<bool>(global0[_wgslsmith_index_u32(84697u, 26u)], var_0, true, false))), vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u), 33621u ^ var_1.b, arg_0.x, ~arg_2.d.b) | ~vec4<u32>(0u, 4294967295u, 26762u, u_input.c), true), _wgslsmith_add_vec4_u32(select(_wgslsmith_sub_vec4_u32(~arg_0, _wgslsmith_add_vec4_u32(arg_0, vec4<u32>(arg_1.b, arg_0.x, 0u, arg_2.d.b))), arg_0, !vec4<bool>(arg_2.d.e.x, arg_2.d.e.x, true, var_0)), (vec4<u32>(var_1.b, arg_1.b, 15867u, var_1.b) & (vec4<u32>(u_input.c, u_input.b, 1u, arg_2.d.b) | arg_0)) & _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(73323u, 19328u, 1u, u_input.b)), abs(vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_2.d.b)))));
    global0 = array<bool, 26>();
    return var_0;
}

fn func_5(arg_0: i32) -> Struct_1 {
    var var_0 = ~29064u;
    global0 = array<bool, 26>();
    let var_1 = ~(~func_2().b);
    let var_2 = func_2();
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_2.a)), 33128u, !select(!vec3<bool>(var_2.c.x, false, var_2.e.x), var_2.e, all(var_2.c.yy)), 2572f, select(vec3<bool>(func_2().c.x, !global0[_wgslsmith_index_u32(var_1, 26u)], true), !var_2.e, var_2.c)), var_2.e.x, var_2.a.xy, -343f, Struct_2(vec2<i32>(reverseBits(u_input.e.x), 12307i), var_2.a.xwy, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.d, var_2.a.x, 2828f), var_2.a.xxw)))))), func_2()));
    return Struct_1(var_3.e.d.a, ~_wgslsmith_mod_u32(~(~1u), var_2.b), !(!select(!var_3.a.c, vec3<bool>(false, var_2.e.x, false), any(vec4<bool>(global0[_wgslsmith_index_u32(3859u, 26u)], global0[_wgslsmith_index_u32(36527u, 26u)], global0[_wgslsmith_index_u32(var_2.b, 26u)], false)))), -2058f, !vec3<bool>(!all(vec4<bool>(false, global0[_wgslsmith_index_u32(var_1, 26u)], false, true)), false, select(func_4(vec4<u32>(4294967295u, var_3.e.d.b, var_2.b, 18564u), var_3.e.d, var_3.e, vec3<i32>(u_input.d, u_input.a.x, u_input.d)), true, arg_0 >= 0i)));
}

fn func_1() -> u32 {
    var var_0 = Struct_3(func_5(select(-1i, u_input.e.x, func_4(select(vec4<u32>(4294967295u, u_input.c, 54746u, u_input.b), vec4<u32>(u_input.b, u_input.b, 49512u, 76182u), global0[_wgslsmith_index_u32(73257u, 26u)]), func_2(), Struct_2(vec2<i32>(u_input.d, u_input.d), vec3<f32>(-321f, 580f, -1615f), vec3<f32>(-319f, -285f, -1000f), Struct_1(vec4<f32>(-515f, -1000f, -832f, -2241f), u_input.c, vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(41474u, 26u)]), 643f, vec3<bool>(global0[_wgslsmith_index_u32(91851u, 26u)], true, global0[_wgslsmith_index_u32(58175u, 26u)]))), -vec3<i32>(535i, u_input.e.x, u_input.a.x)))), global0[_wgslsmith_index_u32(~u_input.c, 26u)], vec2<f32>(-1259f, _wgslsmith_div_f32(-1087f, -1226f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-274f)))), Struct_2(vec2<i32>(49587i, 1i >> (abs(u_input.b) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(step(439f, _wgslsmith_f_op_f32(f32(-1f) * -1566f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1240f, 2295f) + _wgslsmith_f_op_f32(abs(-452f))), -1641f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(f32(-1f) * -127f), -244f) - vec3<f32>(_wgslsmith_div_f32(-858f, -462f), _wgslsmith_f_op_f32(func_3(u_input.e.x)), -1074f)), Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1998f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -238f)), 1u, vec3<bool>(true, !global0[_wgslsmith_index_u32(4294967295u, 26u)], false), func_2().d, !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 26u)], true, global0[_wgslsmith_index_u32(6751u, 26u)])))));
    var var_1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-432f)), -1561f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * 1429f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(493f, 1000f)) * _wgslsmith_div_f32(-435f, var_0.e.b.x)), 215f), 44732u, func_5(-u_input.e.x ^ _wgslsmith_sub_i32(u_input.a.x, 29629i)).c, func_5(-18500i).a.x, func_2().c), var_0.e.d.e.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.a.a.zw), vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.a.x)), _wgslsmith_div_f32(var_0.e.b.x, 1342f)), all(vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(-1000f, 181f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.a.x))) - _wgslsmith_f_op_f32(f32(-1f) * -217f)), _wgslsmith_f_op_f32(func_5(-u_input.e.x).a.x + _wgslsmith_f_op_f32(trunc(-422f))), global0[_wgslsmith_index_u32(~71149u, 26u)])), var_0.e);
    let var_2 = var_0.e;
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    return abs(((u_input.c | var_1.e.d.b) ^ _wgslsmith_add_u32(var_0.e.d.b, u_input.b)) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(42801u, u_input.c, var_1.a.b, 19172u), vec4<u32>(var_1.a.b, 0u, var_0.e.d.b, var_1.e.d.b)) ^ ~32159u) % 32u)) & _wgslsmith_clamp_u32(firstLeadingBit(~_wgslsmith_sub_u32(var_0.a.b, u_input.c)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.d.b, 4294967295u, 24320u, 1u), vec4<u32>(1u, var_1.e.d.b, var_0.e.d.b, var_0.a.b)), var_0.e.d.b ^ 1u), _wgslsmith_mod_u32(39356u, 48548u) >> (u_input.c % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(32961u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(8597u, u_input.c, u_input.c, u_input.b), vec4<u32>(5009u, u_input.b, 93473u, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(10729u, u_input.c, u_input.c, u_input.c), vec4<u32>(0u, 28945u, u_input.c, 4289u))), _wgslsmith_clamp_u32(~0u, u_input.c & ~1u, max(_wgslsmith_mult_u32(42255u, u_input.b), u_input.b)))), 26u)];
    let var_1 = 1i;
    let var_2 = min(var_1, 37060i >> (func_1() % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(192f, -796f) + vec2<f32>(-553f, -1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1143f * -228f) - _wgslsmith_f_op_f32(step(-1346f, 1442f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_i32(-2147483647i, var_2, var_1))) + _wgslsmith_f_op_f32(684f - _wgslsmith_f_op_f32(step(1368f, 611f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(reverseBits(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.x, var_3.x))));
}

