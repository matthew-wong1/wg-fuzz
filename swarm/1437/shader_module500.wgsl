struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec3<bool> {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1861f) == arg_0.b.a.x, all(arg_0.d.e));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(arg_0.b.a.x, -689f), _wgslsmith_f_op_f32(-arg_0.b.a.x), _wgslsmith_f_op_f32(round(arg_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1152f, arg_0.b.a.x, -1724f), vec3<f32>(arg_0.a, arg_0.b.a.x, 597f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1236f, -1566f, -1810f), vec3<f32>(-2003f, -658f, -955f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-382f, arg_0.b.a.x, arg_0.b.a.x)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(arg_0.b.a.x, -750f)) * 412f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - -346f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1871f)), arg_0.d.a.x)))));
    var_0 = vec2<bool>(arg_0.b.b.b, arg_0.d.b.b);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -412f, 1413f);
    var var_3 = any(!vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1, abs(arg_1), _wgslsmith_clamp_u32(arg_1, 52412u, 104605u)), 1u)]));
    return vec3<bool>(false, true, true);
}

fn func_2(arg_0: Struct_4) -> vec4<u32> {
    let var_0 = Struct_4(-645f, arg_0.b, _wgslsmith_sub_vec3_i32(select(vec3<i32>(_wgslsmith_mod_i32(1i, -1i), 1i, arg_0.b.b.a.x), max(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(3606i, u_input.a.x, -35523i)), vec3<i32>(u_input.a.x, 2147483647i, 2147483647i)), select(arg_0.d.e.wyz, func_3(Struct_4(351f, Struct_3(vec2<f32>(arg_0.a, arg_0.b.a.x), arg_0.b.b, 0u, 4294967295u, vec4<bool>(false, arg_0.d.e.x, true, false)), u_input.a, Struct_3(arg_0.b.a, Struct_2(arg_0.b.b.a, false), 2416u, 13996u, vec4<bool>(true, false, false, true)), 20564i), arg_0.b.c), vec3<bool>(arg_0.b.e.x, global0[_wgslsmith_index_u32(arg_0.b.c, 1u)], true))), arg_0.b.b.a.wxx), Struct_3(arg_0.b.a, arg_0.d.b, ~1042u, reverseBits(~(~arg_0.b.d)), select(arg_0.b.e, !(!vec4<bool>(arg_0.d.b.b, true, arg_0.d.b.b, arg_0.b.b.b)), global0[_wgslsmith_index_u32(arg_0.b.d, 1u)])), i32(-1i) * -26733i);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a, _wgslsmith_div_f32(var_0.d.a.x, arg_0.d.a.x), _wgslsmith_f_op_f32(-1000f - -978f), arg_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1377f, var_0.d.a.x, 1303f, var_0.b.a.x) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(405f, arg_0.a, arg_0.b.a.x, arg_0.d.a.x))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(522f - _wgslsmith_f_op_f32(var_0.b.a.x + 2014f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1790f)), -868f, arg_0.a), arg_0.d.e));
    global0 = array<bool, 1>();
    var var_2 = arg_0;
    let var_3 = var_0.d.b;
    return abs(abs(vec4<u32>(~var_2.b.c, ~arg_0.b.d, 46392u, 0u) ^ vec4<u32>(_wgslsmith_sub_u32(var_2.b.c, var_0.b.d), 1u, arg_0.b.d, firstLeadingBit(4294967295u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_5(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.b.d, arg_1.b.c, 45889u, 4294967295u)), ~(~vec4<u32>(arg_1.d.c, arg_1.d.d, 4294967295u, 0u))), Struct_1(true, any(!vec2<bool>(arg_2.x, false)), !select(vec2<bool>(arg_2.x, false), vec2<bool>(true, true), !global0[_wgslsmith_index_u32(23540u, 1u)]), _wgslsmith_sub_u32(arg_1.b.c, 1u & _wgslsmith_sub_u32(arg_1.b.c, arg_1.b.c)), !all(select(vec2<bool>(true, true), arg_1.b.e.zx, vec2<bool>(false, global0[_wgslsmith_index_u32(arg_1.d.c, 1u)])))), select(48007u, 0u, arg_1.d.e.x), u_input.a, ((all(arg_2.xzy) | global0[_wgslsmith_index_u32(abs(arg_1.b.d), 1u)]) || false) & all(vec3<bool>(true, !arg_0.x, arg_2.x)));
    global0 = array<bool, 1>();
    let var_1 = arg_1.b;
    var var_2 = _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, var_1.d, 0u, 16781u), vec4<u32>(var_0.a, var_0.a, 104394u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, 0u, var_0.c, arg_1.b.c), vec4<u32>(12618u, 6369u, 67841u, 41095u))), countOneBits(~vec4<u32>(arg_1.b.c, var_0.a, 108454u, var_1.d))) & (vec4<u32>(0u, (var_0.a | arg_1.b.c) & (4880u >> (1u % 32u)), ~0u, arg_1.b.d) << (~vec4<u32>(abs(var_0.b.d), var_0.a, 0u, arg_1.b.c << (var_1.d % 32u)) % vec4<u32>(32u)));
    var var_3 = Struct_2(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(~var_1.b.a.x, var_0.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.a.x, -49002i), vec2<i32>(-3997i, u_input.a.x)), -2147483647i), _wgslsmith_div_vec4_i32(arg_1.d.b.a, vec4<i32>(-37538i, var_0.d.x, arg_1.b.b.a.x, u_input.a.x)) << (~vec4<u32>(4621u, 56620u, 4294967295u, 13257u) % vec4<u32>(32u))), -select(arg_1.b.b.a, max(vec4<i32>(arg_1.d.b.a.x, 29696i, u_input.a.x, var_1.b.a.x), var_1.b.a), select(arg_2, arg_1.b.e, vec4<bool>(global0[_wgslsmith_index_u32(34378u, 1u)], false, true, arg_1.d.b.b)))), 0u < arg_1.d.c);
    return 34140u >> (var_2.x % 32u);
}

fn func_1() -> bool {
    let var_0 = ~countOneBits(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.zy), _wgslsmith_dot_vec2_i32(u_input.a.zx & u_input.a.xx, vec2<i32>(44041i, u_input.a.x)), reverseBits(2147483647i) | u_input.a.x));
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -836f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(463f, 593f, global0[_wgslsmith_index_u32(12423u, 1u)]))))));
    let var_2 = var_0.x;
    return global0[_wgslsmith_index_u32(func_4(vec3<bool>(!all(vec4<bool>(global0[_wgslsmith_index_u32(24413u, 1u)], false, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])), all(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_2(Struct_4(550f, Struct_3(vec2<f32>(var_1, var_1), Struct_2(vec4<i32>(-30290i, u_input.a.x, 27272i, var_2), global0[_wgslsmith_index_u32(35601u, 1u)]), 36966u, 4294967295u, vec4<bool>(false, global0[_wgslsmith_index_u32(13279u, 1u)], true, true)), vec3<i32>(44575i, u_input.a.x, -2147483647i), Struct_3(vec2<f32>(435f, 239f), Struct_2(vec4<i32>(12263i, u_input.a.x, var_0.x, -1i), true), 1u, 53397u, vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], true, true, true)), 2147483647i)), ~reverseBits(vec4<u32>(76177u, 13041u, 12986u, 36096u))), 1u)]), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1038f)), _wgslsmith_f_op_f32(f32(-1f) * -195f)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(2184f * -247f)), Struct_2(countOneBits(var_0), global0[_wgslsmith_index_u32(~19353u, 1u)]), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4012u, 21919u), min(vec2<u32>(1u, 0u), vec2<u32>(25857u, 0u))), vec4<bool>(global0[_wgslsmith_index_u32(5408u, 1u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(11001u, 1u), 1u)], true, false)), abs(countOneBits(select(vec3<i32>(var_0.x, var_0.x, var_2), var_0.wxy, global0[_wgslsmith_index_u32(30381u, 1u)]))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(494f, var_1)))), Struct_2(vec4<i32>(var_0.x, -25488i, 1i, var_2), var_0.x == 1i), 3230u, _wgslsmith_mult_u32(min(21681u, 0u), 1u), !vec4<bool>(global0[_wgslsmith_index_u32(7557u, 1u)], true, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(5791u, 1u)])), firstLeadingBit(-_wgslsmith_div_i32(2147483647i, var_0.x))), select(!vec4<bool>(-1i < var_2, !global0[_wgslsmith_index_u32(4294967295u, 1u)], all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 1u)])), true), select(vec4<bool>(global0[_wgslsmith_index_u32(9510u, 1u)] & false, true, !global0[_wgslsmith_index_u32(38844u, 1u)], any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(30308u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]))), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(50619u, 1u)], global0[_wgslsmith_index_u32(4465u, 1u)], false), vec4<bool>(true, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(28040u, 1u)], true, false, false)), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(72271u, 1u)], false), global0[_wgslsmith_index_u32(1u, 1u)]), !vec4<bool>(global0[_wgslsmith_index_u32(57746u, 1u)], false, false, true)), vec4<bool>(global0[_wgslsmith_index_u32(~1u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], false, all(func_3(Struct_4(var_1, Struct_3(vec2<f32>(var_1, var_1), Struct_2(var_0, false), 0u, 4294967295u, vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])), vec3<i32>(var_2, 1i, var_2), Struct_3(vec2<f32>(715f, 1715f), Struct_2(var_0, true), 1u, 0u, vec4<bool>(false, global0[_wgslsmith_index_u32(7278u, 1u)], global0[_wgslsmith_index_u32(52960u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])), 8263i), 4696u))))), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 1>();
    var var_0 = _wgslsmith_dot_vec3_u32(countOneBits(firstLeadingBit(firstLeadingBit(abs(vec3<u32>(15491u, 0u, 1u))))), abs(vec3<u32>(1u, 1u, 1u)));
    var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(~(~1u), 10565u), 57921u);
    let var_1 = !select(!(!func_1()), select(true, !any(vec2<bool>(false, false)), true), false);
    var var_2 = Struct_5(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(1855u, 4460u, 45309u, 4294967295u), vec4<u32>(1u, 0u, 517u, 46283u), vec4<bool>(var_1, var_1, false, global0[_wgslsmith_index_u32(0u, 1u)])) & vec4<u32>(1u, 1u, 1u, 1u)), 1u), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(min(vec2<u32>(35189u, 1970u), vec2<u32>(4294967295u, 22731u))), ~countOneBits(vec2<u32>(4294967295u, 33113u))), 1u)], true, func_3(Struct_4(_wgslsmith_f_op_f32(abs(815f)), Struct_3(vec2<f32>(562f, 1782f), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), var_1), 1u, 0u, vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 1u)], var_1)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a.x, -53215i), u_input.a, u_input.a), Struct_3(vec2<f32>(685f, -2122f), Struct_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 22451i), true), 16661u, 4294967295u, vec4<bool>(true, false, true, var_1)), u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1276u, 30022u), vec2<u32>(9352u, 1u)))).xy, 1u, true), (~1u ^ ~func_2(Struct_4(-1000f, Struct_3(vec2<f32>(292f, -760f), Struct_2(vec4<i32>(u_input.a.x, 34829i, -106i, -10994i), true), 4294967295u, 71882u, vec4<bool>(var_1, true, var_1, false)), vec3<i32>(32208i, 1i, 1i), Struct_3(vec2<f32>(-754f, 450f), Struct_2(vec4<i32>(112516i, -9411i, u_input.a.x, -2147483647i), false), 1u, 0u, vec4<bool>(global0[_wgslsmith_index_u32(16263u, 1u)], false, true, false)), u_input.a.x)).x) & 1u, select(select(vec3<i32>(u_input.a.x, u_input.a.x, -65313i) | u_input.a, u_input.a, true) << (_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(8098u, 21782u, 4294967295u)), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 4294967295u, 1u)) % vec3<u32>(32u)), u_input.a, func_3(Struct_4(273f, Struct_3(vec2<f32>(-1611f, -191f), Struct_2(vec4<i32>(u_input.a.x, -1i, -12217i, 340i), false), 0u, 4294967295u, vec4<bool>(false, true, true, false)), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) >> (vec3<u32>(50295u, 53097u, 23951u) % vec3<u32>(32u)), Struct_3(vec2<f32>(1074f, -739f), Struct_2(vec4<i32>(-57736i, 0i, -24948i, 1i), global0[_wgslsmith_index_u32(1u, 1u)]), 10534u, 0u, vec4<bool>(global0[_wgslsmith_index_u32(41897u, 1u)], global0[_wgslsmith_index_u32(7095u, 1u)], true, global0[_wgslsmith_index_u32(0u, 1u)])), 1i), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(39914u, 1u, 6342u, 40294u)), countOneBits(vec4<u32>(0u, 117030u, 43404u, 4294967295u))))), !any(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 1u)], true, global0[_wgslsmith_index_u32(40133u, 1u)]), !vec4<bool>(var_1, var_1, global0[_wgslsmith_index_u32(1u, 1u)], false), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], false, true))));
    let var_3 = Struct_1(!global0[_wgslsmith_index_u32(abs(0u), 1u)], !any(vec2<bool>(var_1, all(var_2.b.c))), var_2.b.c, var_2.b.d, false);
    let var_4 = Struct_3(vec2<f32>(-539f, -383f), Struct_2(select(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -20816i), vec4<i32>(-15173i, u_input.a.x, -1i, var_2.d.x)), vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_2.d.x, var_2.d.x), vec4<i32>(0i, u_input.a.x, var_2.d.x, u_input.a.x)), select(u_input.a.x, 29605i, false), 19740i), !(!var_3.b)), global0[_wgslsmith_index_u32(var_2.c, 1u)]), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(select(vec3<u32>(var_2.b.d, 4294967295u, 1u), vec3<u32>(4294967295u, 0u, var_2.a), false)), countOneBits(vec3<u32>(0u, 4294967295u, 4294967295u) | vec3<u32>(var_2.b.d, var_3.d, var_3.d))), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.d, 0u, 17247u), vec3<u32>(var_3.d, 37514u, var_3.d)) >> (select(vec3<u32>(4294967295u, var_3.d, 20095u), vec3<u32>(var_3.d, 76181u, 4294967295u), false) % vec3<u32>(32u)))), ~(~9245u), !vec4<bool>(select(true | var_3.a, var_1 & var_2.e, u_input.a.x > var_2.d.x), func_3(Struct_4(348f, Struct_3(vec2<f32>(411f, -1800f), Struct_2(vec4<i32>(var_2.d.x, 1i, u_input.a.x, u_input.a.x), true), var_3.d, var_3.d, vec4<bool>(var_3.b, true, false, var_1)), var_2.d, Struct_3(vec2<f32>(-821f, 644f), Struct_2(vec4<i32>(4172i, 2147483647i, 0i, -2147483647i), true), 0u, var_2.c, vec4<bool>(var_2.b.c.x, false, false, false)), u_input.a.x), ~var_3.d).x, all(select(vec3<bool>(true, var_2.e, var_3.c.x), vec3<bool>(var_3.a, true, global0[_wgslsmith_index_u32(var_2.b.d, 1u)]), vec3<bool>(var_1, var_1, var_3.e))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(var_4.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_4.a.x - var_4.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(304f)) + _wgslsmith_f_op_f32(round(var_4.a.x)))), _wgslsmith_f_op_f32(var_4.a.x + var_4.a.x)));
}

