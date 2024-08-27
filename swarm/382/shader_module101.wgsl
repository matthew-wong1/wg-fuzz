struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
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

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 4294967295u);

var<private> global1: array<f32, 32>;

var<private> global2: array<u32, 16>;

var<private> global3: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_mult_u32(global0.x, _wgslsmith_dot_vec2_u32(reverseBits(reverseBits(vec2<u32>(arg_1.x, arg_1.x))), u_input.a << (global0.zy % vec2<u32>(32u))) | _wgslsmith_clamp_u32(reverseBits(4294967295u >> (u_input.a.x % 32u)), ~_wgslsmith_clamp_u32(global0.x, global0.x, arg_1.x), global0.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 32u)] + global1[_wgslsmith_index_u32(0u, 32u)])))) - _wgslsmith_f_op_f32(round(413f))) * global1[_wgslsmith_index_u32(12678u, 32u)]);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a.x, 32u)]))), 1017f) - _wgslsmith_f_op_f32(abs(-1572f))), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(66941u, 20519u), 32u)], global1[_wgslsmith_index_u32(1u, 32u)], !select(false, arg_0.x & true, true))));
    return ~1u;
}

fn func_2() -> vec3<u32> {
    let var_0 = 1i;
    let var_1 = u_input.e.x;
    let var_2 = Struct_3(Struct_1(vec3<u32>(~func_3(vec2<bool>(true, true), global0.zx), u_input.a.x, 40769u), _wgslsmith_f_op_f32(f32(-1f) * -766f)), all(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    global2 = array<u32, 16>();
    global0 = select(var_2.a.a, _wgslsmith_add_vec3_u32(~countOneBits(var_2.a.a), firstLeadingBit(reverseBits(u_input.b.wzx))), true | select(true, select(-445f >= global1[_wgslsmith_index_u32(1u, 32u)], all(vec4<bool>(false, false, true, var_2.b)), false), any(!vec3<bool>(false, true, var_2.b))));
    return ~(~vec3<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(1u, u_input.b.x), _wgslsmith_sub_u32(42730u, var_2.a.a.x)), ~u_input.b.x, 28323u));
}

fn func_4(arg_0: u32, arg_1: i32) -> Struct_1 {
    global3 = true;
    let var_0 = ~(~(55867u & (~global2[_wgslsmith_index_u32(45497u, 16u)] & u_input.c.x)));
    var var_1 = 4294967295u;
    global3 = true;
    let var_2 = Struct_1(~(~(~vec3<u32>(29454u, 4294967295u, u_input.a.x))), global1[_wgslsmith_index_u32(global0.x, 32u)]);
    return Struct_1(_wgslsmith_add_vec3_u32(~var_2.a, min(vec3<u32>(35615u, 1u, ~var_0), select(u_input.c, _wgslsmith_add_vec3_u32(var_2.a, vec3<u32>(arg_0, global2[_wgslsmith_index_u32(24231u, 16u)], 1u)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(min(4294967295u, 30430u), 32u)], var_2.b)) + -1612f)));
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_5 {
    let var_0 = -477f;
    global0 = arg_2.d.a;
    var var_1 = ~vec2<i32>(0i, _wgslsmith_sub_i32(u_input.d.x, -1i));
    global0 = arg_2.c.a;
    global3 = any(arg_2.a);
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 32u)], 377f, var_0) + arg_2.b))))), 0i, select(arg_2.a, vec2<bool>(true, select(false, !arg_3.b, false)), !select(vec2<bool>(arg_3.b, true), vec2<bool>(arg_2.a.x, false), true)), Struct_1(func_4(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), -1i).a, _wgslsmith_f_op_f32(-1028f - _wgslsmith_div_f32(1317f, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 16u)], 32u)]))))), _wgslsmith_mod_vec3_i32(u_input.d, ~vec3<i32>(-2147483647i, var_1.x, abs(-29742i))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_5) -> Struct_5 {
    global1 = array<f32, 32>();
    var var_0 = arg_2.e.xx;
    let var_1 = func_5(-(~_wgslsmith_div_vec4_i32(-vec4<i32>(var_0.x, -2147483647i, -41684i, u_input.e.x), -vec4<i32>(-1i, var_0.x, var_0.x, arg_2.b))), 52072i, Struct_2(select(arg_2.c, vec2<bool>(true, true), !arg_2.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b * 206f), -201f, -156f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(142f, global1[_wgslsmith_index_u32(1u, 32u)], 578f) - arg_2.a))), func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 84442u, 4294967295u) ^ vec3<u32>(1u, 4294967295u, arg_0.a.x), func_2()), i32(-1i) * -var_0.x), Struct_1(vec3<u32>(u_input.c.x, 1u, 60343u), _wgslsmith_f_op_f32(-arg_0.b))), Struct_3(func_4(u_input.b.x, -2147483647i), true));
    var_0 = vec2<i32>(-10273i, -25894i) | -select(reverseBits(var_1.e.zy), -_wgslsmith_clamp_vec2_i32(arg_2.e.xz, arg_2.e.zy, vec2<i32>(u_input.d.x, u_input.d.x)), !any(vec2<bool>(true, false)));
    var var_2 = Struct_3(Struct_1(func_4(abs(countOneBits(u_input.b.x)), var_0.x).a, -902f), any(vec4<bool>(func_5(_wgslsmith_mult_vec4_i32(vec4<i32>(48869i, 0i, var_0.x, arg_2.e.x), vec4<i32>(u_input.e.x, -47381i, u_input.e.x, 0i)), min(-19991i, var_1.b), Struct_2(var_1.c, var_1.a, var_1.d, Struct_1(vec3<u32>(0u, 17733u, 53804u), -116f)), Struct_3(var_1.d, var_1.c.x)).c.x, any(!vec4<bool>(arg_2.c.x, arg_2.c.x, var_1.c.x, false)), !var_1.c.x, var_1.c.x)));
    return func_5(select(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.b, arg_2.e.x, -1i, u_input.d.x), vec4<i32>(var_0.x, arg_2.b, u_input.d.x, -1721i), vec4<i32>(1i, 1i, -2147483647i, 2147483647i))), -select(vec4<i32>(-2147483647i, 0i, var_1.e.x, -2147483647i), vec4<i32>(var_0.x, arg_2.e.x, -27452i, -2147483647i), vec4<bool>(true, true, var_2.b, false)), vec4<bool>(var_1.c.x, var_1.c.x, select(var_1.c.x, var_1.c.x, var_1.c.x), var_2.b)) << (firstTrailingBit(~_wgslsmith_sub_vec4_u32(u_input.b, u_input.b)) % vec4<u32>(32u)), -27890i, Struct_2(vec2<bool>(any(select(vec3<bool>(var_1.c.x, var_2.b, true), vec3<bool>(var_1.c.x, false, false), vec3<bool>(var_1.c.x, arg_2.c.x, var_1.c.x))), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a - vec3<f32>(var_2.a.b, -772f, -1780f)))), Struct_1(vec3<u32>(func_4(1u, -1i).a.x, arg_1.x, ~var_1.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.b))), Struct_1(vec3<u32>(18805u, arg_0.a.x, _wgslsmith_clamp_u32(var_2.a.a.x, 32141u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f - arg_2.d.b)))), Struct_3(func_4(36065u, var_0.x ^ min(-1i, u_input.e.x)), any(vec4<bool>(var_1.c.x && false, true, all(vec3<bool>(var_1.c.x, var_2.b, var_1.c.x)), arg_2.c.x))));
}

fn func_6(arg_0: Struct_5) -> i32 {
    let var_0 = vec4<bool>(all(select(select(!vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<bool>(true, arg_0.c.x, true, true), all(vec4<bool>(true, false, false, arg_0.c.x))), !vec4<bool>(arg_0.c.x, false, arg_0.c.x, true), vec4<bool>(false, arg_0.c.x, true, true))), ~41087u <= _wgslsmith_sub_u32(46974u, func_1(func_4(1u, -27452i), vec2<u32>(13669u, arg_0.d.a.x), func_5(vec4<i32>(u_input.d.x, u_input.e.x, u_input.d.x, u_input.d.x), 1199i, Struct_2(vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.a, Struct_1(u_input.c, 661f), Struct_1(vec3<u32>(arg_0.d.a.x, 1u, arg_0.d.a.x), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 16u)], 32u)])), Struct_3(arg_0.d, arg_0.c.x))).d.a.x), any(vec3<bool>(true, !arg_0.c.x, true)), !(func_1(arg_0.d, ~global0.xx, Struct_5(arg_0.a, u_input.e.x, vec2<bool>(false, true), Struct_1(vec3<u32>(u_input.b.x, global0.x, 4294967295u), global1[_wgslsmith_index_u32(arg_0.d.a.x, 32u)]), vec3<i32>(arg_0.b, arg_0.e.x, -1i))).c.x || any(select(vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, false, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_0.c.x)))));
    global0 = vec3<u32>(firstLeadingBit(arg_0.d.a.x) >> (global0.x % 32u), global2[_wgslsmith_index_u32(~u_input.a.x, 16u)], _wgslsmith_mult_u32(349u ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.d.a.x, 1u, global0.x, global0.x), ~u_input.b), _wgslsmith_sub_u32(~(~global0.x), 64955u)));
    global1 = array<f32, 32>();
    var var_1 = var_0;
    global0 = vec3<u32>(~global0.x, u_input.a.x, _wgslsmith_dot_vec3_u32(~(~(u_input.c ^ arg_0.d.a)), abs(~(~vec3<u32>(global0.x, 41877u, u_input.b.x)))));
    return 1i;
}

fn func_7(arg_0: i32, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = true;
    global3 = func_1(Struct_1(u_input.c, 904f), func_4(select(~0u & (31340u ^ arg_1.a.a.x), 8235u, var_0), i32(-1i) * -14969i).a.yx, Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.b), -778f, -891f), _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, arg_0, 2147483647i, arg_0), vec4<i32>(29265i, -1i, -31849i, 1i)), vec4<i32>(28131i, u_input.e.x, reverseBits(u_input.e.x), firstTrailingBit(arg_0))), !func_5(~vec4<i32>(2147483647i, u_input.d.x, 2147483647i, -945i), func_5(vec4<i32>(arg_0, u_input.e.x, arg_0, -1972i), arg_0, Struct_2(vec2<bool>(true, var_0), vec3<f32>(arg_1.a.b, 694f, -227f), Struct_1(arg_1.a.a, 1034f), arg_1.a), arg_1).e.x, Struct_2(vec2<bool>(false, var_0), vec3<f32>(1521f, 669f, arg_1.a.b), Struct_1(u_input.c, arg_1.a.b), arg_1.a), Struct_3(Struct_1(vec3<u32>(global0.x, global0.x, u_input.b.x), 879f), true)).c, Struct_1(select(arg_1.a.a, arg_1.a.a, func_5(vec4<i32>(-17243i, arg_0, u_input.e.x, arg_0), -1i, Struct_2(vec2<bool>(arg_1.b, var_0), vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 32u)], -178f, 363f), arg_1.a, Struct_1(arg_1.a.a, arg_1.a.b)), arg_1).c.x), _wgslsmith_f_op_f32(sign(1000f))), firstLeadingBit(func_5(vec4<i32>(arg_0, 65850i, 2147483647i, 2147483647i), arg_0, Struct_2(vec2<bool>(var_0, false), vec3<f32>(arg_1.a.b, 722f, -577f), arg_1.a, Struct_1(u_input.c, -774f)), arg_1).e) | u_input.d)).c.x;
    var var_1 = !(!(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, -80781i), arg_0) < _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.d.x, -23151i, 16999i, 28620i), vec4<i32>(arg_0, -5708i, u_input.d.x, 2147483647i)), abs(vec4<i32>(54293i, -1i, u_input.e.x, -36893i)))));
    global0 = ~reverseBits(~vec3<u32>(u_input.b.x << (4294967295u % 32u), global2[_wgslsmith_index_u32(4294967295u, 16u)], global0.x));
    var var_2 = true;
    return vec4<bool>(false, true, func_1(Struct_1(~vec3<u32>(49882u, arg_1.a.a.x, u_input.c.x), _wgslsmith_f_op_f32(arg_1.a.b + -353f)), vec2<u32>(69836u, _wgslsmith_mult_u32(~arg_1.a.a.x, ~arg_1.a.a.x)), func_1(arg_1.a, global0.xx, func_1(func_4(u_input.c.x, u_input.d.x), vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(1u, 16u)]), func_1(Struct_1(u_input.c, arg_1.a.b), arg_1.a.a.xz, Struct_5(vec3<f32>(-494f, -995f, global1[_wgslsmith_index_u32(76368u, 32u)]), arg_0, vec2<bool>(false, true), arg_1.a, vec3<i32>(arg_0, u_input.e.x, 10418i)))))).c.x, true | !any(!vec2<bool>(false, arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_dot_vec4_i32(vec4<i32>(func_6(func_1(Struct_1(u_input.b.zzz, global1[_wgslsmith_index_u32(global0.x, 32u)]), vec2<u32>(4294967295u, global0.x), Struct_5(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81361u, 16u)], 32u)], global1[_wgslsmith_index_u32(u_input.c.x, 32u)]), 1412i, vec2<bool>(true, false), Struct_1(u_input.b.wyy, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], 32u)]), vec3<i32>(u_input.d.x, 63547i, u_input.e.x)))), u_input.e.x, u_input.e.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(18604i, 1i), vec2<i32>(u_input.e.x, u_input.e.x), false), vec2<i32>(0i, u_input.d.x))), vec4<i32>(1i, 1i, -1731i, 0i) >> (~firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global0.x, 1u)) % vec4<u32>(32u))), Struct_3(Struct_1(_wgslsmith_div_vec3_u32(max(vec3<u32>(global2[_wgslsmith_index_u32(26932u, 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46088u, 16u)], 16u)], 16u)], 1u), vec3<u32>(global2[_wgslsmith_index_u32(0u, 16u)], 20656u, u_input.c.x)), vec3<u32>(79869u, 4294967295u, 47622u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 32u)]) * -632f)), any(vec2<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(102333u, 16u)], 32u)] > 169f, any(vec3<bool>(true, false, true))))));
    global1 = array<f32, 32>();
    let var_1 = Struct_2(var_0.zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global0.x & func_2().x, 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1493f)) - global1[_wgslsmith_index_u32(1u, 32u)]), global1[_wgslsmith_index_u32(66692u, 32u)])), Struct_1(~(~(~vec3<u32>(4294967295u, 66352u, global2[_wgslsmith_index_u32(124916u, 16u)]))), _wgslsmith_f_op_f32(min(func_1(func_1(Struct_1(vec3<u32>(15275u, 0u, 44464u), global1[_wgslsmith_index_u32(0u, 32u)]), u_input.c.yz, Struct_5(vec3<f32>(1499f, 1093f, 1000f), u_input.d.x, vec2<bool>(false, var_0.x), Struct_1(u_input.b.zzy, 351f), vec3<i32>(u_input.d.x, u_input.e.x, -29155i))).d, vec2<u32>(58869u, global0.x), func_5(vec4<i32>(u_input.d.x, u_input.e.x, u_input.e.x, -3827i), -1i, Struct_2(vec2<bool>(true, false), vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 32u)], 648f, 884f), Struct_1(vec3<u32>(u_input.a.x, 63706u, 72601u), 264f), Struct_1(vec3<u32>(global0.x, 16512u, 0u), 915f)), Struct_3(Struct_1(u_input.b.yyx, -1000f), true))).d.b, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(23919u, 92081u), _wgslsmith_mult_u32(35229u, global0.x)), 32u)]))), func_5(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-32469i, 47900i, -1i, -13526i), vec4<i32>(17416i, 0i, u_input.d.x, u_input.d.x)), vec4<i32>(1i, u_input.e.x, u_input.e.x, u_input.d.x)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.e.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, -19008i, u_input.e.x, -64558i))), u_input.d.x, Struct_2(vec2<bool>(var_0.x && true, var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1855f, global1[_wgslsmith_index_u32(1u, 32u)], 1728f), vec3<f32>(-990f, global1[_wgslsmith_index_u32(4294967295u, 32u)], -1036f))), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 49959u, global2[_wgslsmith_index_u32(global0.x, 16u)]), vec3<u32>(u_input.c.x, 4294967295u, global0.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 32u)])), func_4(select(29777u, global2[_wgslsmith_index_u32(u_input.b.x, 16u)], var_0.x), ~(-12115i))), Struct_3(Struct_1(firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global2[_wgslsmith_index_u32(32450u, 16u)], u_input.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(41417u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]), 32u)]), var_0.x)).d);
    global0 = _wgslsmith_add_vec3_u32(vec3<u32>(func_1(Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(44047u, 16u)], u_input.c.x, global2[_wgslsmith_index_u32(34642u, 16u)]), global1[_wgslsmith_index_u32(65997u, 32u)]), vec2<u32>(var_1.d.a.x, global2[_wgslsmith_index_u32(0u, 16u)]), Struct_5(vec3<f32>(var_1.c.b, global1[_wgslsmith_index_u32(var_1.d.a.x, 32u)], global1[_wgslsmith_index_u32(1413u, 32u)]), u_input.e.x, var_1.a, Struct_1(vec3<u32>(u_input.a.x, u_input.b.x, 41421u), var_1.d.b), vec3<i32>(u_input.e.x, u_input.d.x, u_input.e.x))).d.a.x ^ countOneBits(4294967295u), 0u, ~(~1u)), max(~vec3<u32>(var_1.d.a.x, var_1.c.a.x, 0u), select(max(vec3<u32>(24996u, 0u, var_1.d.a.x), var_1.d.a), func_1(var_1.d, vec2<u32>(6978u, 32508u), Struct_5(var_1.b, -2147483647i, var_1.a, var_1.d, vec3<i32>(u_input.e.x, u_input.d.x, u_input.d.x))).d.a, var_1.a.x))) | vec3<u32>(func_4(global2[_wgslsmith_index_u32(global0.x, 16u)], -2872i >> (func_2().x % 32u)).a.x, max(func_5(-vec4<i32>(3814i, 0i, u_input.d.x, 1i), u_input.d.x, Struct_2(var_0.ww, var_1.b, Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global0.x, 1u), global1[_wgslsmith_index_u32(21102u, 32u)]), Struct_1(vec3<u32>(1u, 1u, var_1.d.a.x), global1[_wgslsmith_index_u32(7420u, 32u)])), Struct_3(var_1.c, false)).d.a.x, ~var_1.c.a.x), _wgslsmith_div_u32(reverseBits(global2[_wgslsmith_index_u32(18959u, 16u)]), ~4294967295u) >> (var_1.c.a.x % 32u));
    global1 = array<f32, 32>();
    var var_2 = var_0.wy;
    global2 = array<u32, 16>();
    let var_3 = reverseBits(-(~(~reverseBits(vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, u_input.d.x)))));
    global1 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.b - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b * var_1.b), _wgslsmith_f_op_vec3_f32(step(var_1.b, vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], 331f, var_1.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(var_1.b, var_1.b, var_0.zxy)), func_1(Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(17286u, 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.c.a.x, 16u)], 16u)], 4294967295u), -726f), vec2<u32>(var_1.c.a.x, global0.x), Struct_5(var_1.b, -24443i, var_0.zx, var_1.c, u_input.d)).a))))));
}

